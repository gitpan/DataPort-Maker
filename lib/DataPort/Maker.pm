#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  DataPort::Maker;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE);
$VERSION = '1.02';
$DATE = '2003/07/04';

use File::Package;
use File::Data;
use DataPort::FileType::FormDB;
use Cwd;

#######
#
# Handle the options
#
sub new 
{
     return undef unless @_;
     my ($class, @options) = @_;
     $class = ref($class) if ref($class);
     my $self= {};
     if( ref($options[0]) eq 'HASH' ) {
         $self->{options} = $options[0];
     }
     elsif( @options ) {
         %{$self->{options}} = (@options);
     }
     else {
         $self->{options} = {};
     }
     bless $self, $class;
}


######
#
# make program modules
#
sub make_pm
{
     my ($self, $targets_h, @targets) = @_;

     $self->{options} = pop @targets if ref($targets[-1]) eq 'HASH';

     my $pm = $self->{options}->{pm};
 
     ###########
     # Gleam the list of program modules
     #
     my @pm=();
     my $pm_ref = ref($pm);
     if ($pm_ref eq 'ARRAY') {
         @pm = @$pm;
     }
     elsif($pm_ref) {
         warn( "Cannot process pm referenced to a $pm_ref\n" );
         return undef;
     }
     else {
         @pm = split /(?: |,|;)+/, $pm;  # have list of outputs
     }
     while (!$pm[0]) {shift @pm};

     my $success = 1;
     foreach $pm (@pm) {
         $self->{options}->{pm} = $pm;    
         unless ($self->make_targets( $targets_h, @targets)) {
             $success = 0;
             last;
         }
     }
     $success;
}


######
#
# make_targets
#
sub make_targets
{
     my ($self, $targets_h, @targets) = @_;

     $self->{options} = pop @targets if ref($targets[-1]) eq 'HASH';

     my $formDB_pm = $self->{options}->{pm};

     ########
     # Determine the SVD program module to load
     #
     unless( $formDB_pm ) {
         warn "No formDB program module.\n";
         return undef;
     }

     if( $self->{options}->{verbose} ) {
         print "~~~~~\nGenerating $formDB_pm " . (join ' ',@targets)    . "\n";
     }

     unless($self->{FormDB_PM} && $self->{FormDB_PM} eq $formDB_pm) {

         #######
         # Add any extra directories to the include path
         #
         my @restore_inc = @INC; 
         unshift @INC, @{$self->{Load_INC}} if( $self->{Load_INC} ); 

         #####
         # load the FormDB program module
         #
         # Always look in the current directory first
         #
         my $error;
         unshift @INC, File::Spec->curdir();
         if( $error = File::Package->load_package( $formDB_pm ) ) {
             warn $error;
             return undef;
         }

         ######
         # Bring the FormDB into memory as @std_db
         #
         my ($formDB_file);
         no strict;
         $formDB_file = ${"${formDB_pm}::FILE"};
         use strict;

         unless( $formDB_file ) {
             warn "No FILE variable in FormDB program module $formDB_pm.\n";
             return undef;
         }
         $formDB_file =~ s=/=\\=g if $^O eq 'MSWin32';  # Microsoft thing

         #######
         # Load the FormDB after the __DATA__ token
         #
         my $fh = File::Data->pm2datah( $formDB_pm );
         my $dbh = new DataPort::FileType::FormDB( file => $fh );
         return undef unless( $dbh );
         my @formDB;
         my $formDB_record;
         unless ($dbh->get(\@formDB, \$formDB_record)) {
             unless( $formDB_record ) {
                 warn( "Empty database for program module $formDB_pm.\n");
             }
             return undef;
         }
         return undef unless $dbh->encode_record( \$formDB_record );
         $dbh->finish( );
         @INC = @restore_inc;

         ###### 
         # Unescape any POD directives
         #
         for( my $i=1; $i < @formDB; $i += 2) {
             $formDB[$i] =~ s/\n\\=/\n=/g;   
         }

         ######
         # Tuck the FormDB away in the $self object hash
         #
         $self->{FormDB_Record} = $formDB_record;
         $self->{FormDB} = \@formDB;
         $self->{FormDB_File} = $formDB_file;
         $self->{FormDB_PM} = $formDB_pm;
     }

     @targets = ('all') unless( @targets );
     my $restore_dir = cwd();
     my $success = 1;

     if( @targets ) {

         my ($macro, $value, $target);
         foreach $target (@targets) {
             if( $target =~ /=/ ) {
                 ($macro,$value) = split /=/, $target;
                 $self->{FormDB}->{$macro} = $value;
                 next;
             }

             $self->{target} = $target;
             chdir $restore_dir;

             my $expanded_target = $targets_h->{$target};

             unless( $expanded_target ) {
                 $expanded_target = $targets_h->{__no_target__};
                 unless( $expanded_target ) {
                     warn "No expanded_target.\n";
                     $success = undef;
                     last;
                 }
             }

             my (@args,$method);
             foreach $target (@{$expanded_target}) {
                 
                 $method = $target;  
                 @args = ();  
                 if(ref($target) eq 'ARRAY') {
                     ($method, @args) = @$target;                
                 }
                 
                 unless ($self->$method( @args )) {
                     $success = undef;
                     last;
                 }

             }

             last unless( $success);
         }
     }

     chdir $restore_dir;

     print "\nFinished processing.\n" if $self->{options}->{verbose};
 
     $success;

}

1

__END__


=head1 NAME

DataPort::Maker - loads a FormDB from a program module and calls targets (methods) with the DB 

=head1 SYNOPSIS

 use DataPort::Maker;

 $maker = new ExtUtils::SVDmaker( @options );
 $maker = new ExtUtils::SVDmaker( \%options );

 $maker->make_targets( \%targets, @targets, \%options ); 
 $maker->make_targets( \%targets, @targets ); 
 $maker->make_targets( \%targets, \%options  ); 

 $maker->make_pm( \%targets, @targets, \%options ); 
 $maker->make_pm( \%targets, @targets ); 
 $maker->make_pm( \%targets, \%options  ); 

=head1 DESCRIPTION

Description coming soon.

=head1 REQUIREMENTS

Requirements are coming.

=head1 DEMONSTRATION

 ~~~~~~ Demonstration overview ~~~~~

Perl code begins with the prompt

 =>

The selected results from executing the Perl Code 
follow on the next lines. For example,

 => 2 + 2
 4

 ~~~~~~ The demonstration follows ~~~~~

 =>     use File::Package;
 =>     my $fp = 'File::Package';
 =>     my $loaded = '';

 =>     use File::SmartNL;
 =>     my $snl = 'File::SmartNL';
 => my $errors = $fp->load_package( 't::DataPort::MakerDB' )
 => $errors
 ''

 => $snl->fin('MakerDB.pm')
 '#!perl
 #
 # The copyright notice and plain old documentation (POD)
 # are at the end of this file.
 #
 package  t::DataPort::MakerDB;

 use strict;
 use warnings;
 use warnings::register;

 use vars qw($VERSION $DATE $FILE );
 $VERSION = '0.01';
 $DATE = '2003/06/07';
 $FILE = __FILE__;

 use DataPort::Maker;
 use vars qw( @ISA );
 @ISA = qw( DataPort::Maker );

 ######
 # Hash of targets
 #
 my %targets = (
     all => [ qw(target1 target2) ],
     target3 => [ qw(target1 target3) ],
     target4 => [ qw(target1 target2 target4) ],
     __no_target__ => [ qw(target3 target4 target5) ],
 );

 my $data = '';

 sub make
 {
     my $self = shift @_;
     $self->make_targets( \%targets, @_ );
     my $result = $data;
     $data = '';
     $result
 }

 sub target1
 {
    $data .= ' target1 ';
    1
 }

 sub target2
 {
    $data .= ' target2 ';
    1
 }

 sub target3
 {
    $data .= ' target3 ';
    1
 }

 sub target4
 {
    $data .= ' target4 ';
    1
 }

 sub target5
 {
    $data .= ' target5 ';
    1
 }

 1

 __DATA__

 Revision: -^
 End_User: General Public^
 Author: http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com^
 Version: ^
 Classification: None^

 ~-~
 '

 => my $maker = new t::DataPort::MakerDB( pm => 't::DataPort::MakerDB' )
 => $maker->make( )
 ' target1  target2 '

 => $maker->make( 'all' )
 ' target1  target2 '

 => $maker->make( 'xyz' )
 ' target3  target4  target5 '

 => $maker->make( 'target3' )
 ' target1  target3 '

 => $maker->make( qw(target3 target4) )
 ' target1  target3  target1  target2  target4 '


=head1 QUALITY ASSURANCE

The module "t::DataPort::Maker" is the Software
Test Description(STD) module for the "DataPort::Maker".
module. 

To generate all the test output files, 
run the generated test script,
run the demonstration script and include it results in the "DataPort::Maker" POD,
execute the following in any directory:

 tmake -test_verbose -replace -run  -pm=t::DataPort::Maker

Note that F<tmake.pl> must be in the execution path C<$ENV{PATH}>
and the "t" directory containing  "t::DataPort::Maker" on the same level as 
the "lib" directory that
contains the "DataPort::Maker" module.

=head1 NOTES

=head2 AUTHOR

=head2 COPYRIGHT HOLDER

The holder of the copyright and maintainer is

 E<lt>support@SoftwareDiamonds.comE<gt>

=head2 COPYRIGHT NOTICE

copyright © 2003 Software Diamonds.

All Rights Reserved

=head2 BINDING REQUIREMENTS NOTICE

Binding requirements are indexed with the
pharse 'shall[dd]' where dd is an unique number
for each header section.
This conforms to standard federal
government practices, 490A (L<STD490A/3.2.3.6>).
In accordance with the License, Software Diamonds
is not liable for any requirement, binding or otherwise.

=head2 LICENSE

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code must retain
the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE. 

=head1 SEE ALSO



=for html
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="COPYRIGHT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut


#######
## E N D   O F   F I L E
#######

