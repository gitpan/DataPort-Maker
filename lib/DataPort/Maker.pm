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
$VERSION = '1.06';
$DATE = '2004/05/10';

use File::Maker;

sub new { File::Maker::new(@_);}
sub make_pm { File::Maker::make_targets(@_) }
sub make_targets { File::Maker::make_targets(@_) }

sub load_db
{
     my ($self, $formDB_pm, $formDB_record, $formDB_array ) = @_;
     $self = $self->File::Maker::load_db($formDB_pm);
     $$formDB_record = $self->{FormDB_Record};
     @$formDB_array = @{$self->{FormDB}};
     return( $self->{FormDB_File} );
}


1

__END__


=head1 NAME

DataPort::Maker - Obsolete. Superceded by C<File::Maker>

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

head1 DESCRIPTION

The C<File::SubPM> subroutines shall be replaced by the
appropriate C<DataPort::Maker> subroutine whenever a 
C<File::PM2File> subroutine needs a revision as follows:

 DataPort::Maker  new( )                 File::Maker    new()
 DataPort::Maker  make_targets( )        File::Maker    make_targets()
 DataPort::Maker  make_pm( )             File::Maker    make_targets() 

=head1 SEE ALSO

=over 4

=item L<File::Maker|File::Maker>

=back

=cut


#######
## E N D   O F   F I L E
#######

