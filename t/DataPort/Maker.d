#!perl
#
#
use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE);
$VERSION = '0.01';   # automatically generated file
$DATE = '2003/07/04';


##### Demonstration Script ####
#
# Name: Maker.d
#
# UUT: DataPort::Maker
#
# The module Test::STDmaker generated this demo script from the contents of
#
# t::DataPort::Maker 
#
# Don't edit this test script file, edit instead
#
# t::DataPort::Maker
#
#	ANY CHANGES MADE HERE TO THIS SCRIPT FILE WILL BE LOST
#
#       the next time Test::STDmaker generates this script file.
#
#

######
#
# The working directory is the directory of the generated file
#
use vars qw($__restore_dir__ @__restore_inc__ );

BEGIN {
    use Cwd;
    use File::Spec;
    use File::TestPath;
    use Test::Tech qw(tech_config plan demo);

    ########
    # Working directory is that of the script file
    #
    $__restore_dir__ = cwd();
    my ($vol, $dirs, undef) = File::Spec->splitpath(__FILE__);
    chdir $vol if $vol;
    chdir $dirs if $dirs;

    #######
    # Add the library of the unit under test (UUT) to @INC
    #
    @__restore_inc__ = File::TestPath->test_lib2inc();

    unshift @INC, File::Spec->catdir( cwd(), 'lib' ); 

}

END {

   #########
   # Restore working directory and @INC back to when enter script
   #
   @INC = @__restore_inc__;
   chdir $__restore_dir__;

}

print << 'MSG';

 ~~~~~~ Demonstration overview ~~~~~
 
Perl code begins with the prompt

 =>

The selected results from executing the Perl Code 
follow on the next lines. For example,

 => 2 + 2
 4

 ~~~~~~ The demonstration follows ~~~~~

MSG

demo( "\ \ \ \ use\ File\:\:Package\;\
\ \ \ \ my\ \$fp\ \=\ \'File\:\:Package\'\;\
\ \ \ \ my\ \$loaded\ \=\ \'\'\;\
\
\ \ \ \ use\ File\:\:SmartNL\;\
\ \ \ \ my\ \$snl\ \=\ \'File\:\:SmartNL\'\;"); # typed in command           
          use File::Package;
    my $fp = 'File::Package';
    my $loaded = '';

    use File::SmartNL;
    my $snl = 'File::SmartNL';; # execution

demo( "my\ \$errors\ \=\ \$fp\-\>load_package\(\ \'t\:\:DataPort\:\:MakerDB\'\ \)"); # typed in command           
      my $errors = $fp->load_package( 't::DataPort::MakerDB' ); # execution

demo( "\$errors", # typed in command           
      $errors # execution
) unless     $loaded; # condition for execution                            

demo( "\$snl\-\>fin\(\'MakerDB\.pm\'\)", # typed in command           
      $snl->fin('MakerDB.pm')); # execution


demo( "my\ \$maker\ \=\ new\ t\:\:DataPort\:\:MakerDB\(\ pm\ \=\>\ \'t\:\:DataPort\:\:MakerDB\'\ \)"); # typed in command           
      my $maker = new t::DataPort::MakerDB( pm => 't::DataPort::MakerDB' ); # execution

demo( "\$maker\-\>make\(\ \)", # typed in command           
      $maker->make( )); # execution


demo( "\$maker\-\>make\(\ \'all\'\ \)", # typed in command           
      $maker->make( 'all' )); # execution


demo( "\$maker\-\>make\(\ \'xyz\'\ \)", # typed in command           
      $maker->make( 'xyz' )); # execution


demo( "\$maker\-\>make\(\ \'target3\'\ \)", # typed in command           
      $maker->make( 'target3' )); # execution


demo( "\$maker\-\>make\(\ qw\(target3\ target4\)\ \)", # typed in command           
      $maker->make( qw(target3 target4) )); # execution



=head1 NAME

Maker.d - demostration script for DataPort::Maker

=head1 SYNOPSIS

 Maker.d

=head1 OPTIONS

None.

=head1 COPYRIGHT

copyright © 2003 Software Diamonds.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
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
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

## end of test script file ##

=cut

