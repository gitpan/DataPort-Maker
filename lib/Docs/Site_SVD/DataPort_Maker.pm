#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  Docs::Site_SVD::DataPort_Maker;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.05';
$DATE = '2004/05/10';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/DataPort_Maker.pm' => [qw(0.05 2004/05/10), 'revised 0.04'],
    'MANIFEST' => [qw(0.05 2004/05/10), 'generated, replaces 0.04'],
    'Makefile.PL' => [qw(0.05 2004/05/10), 'generated, replaces 0.04'],
    'README' => [qw(0.05 2004/05/10), 'generated, replaces 0.04'],
    'lib/DataPort/Maker.pm' => [qw(1.06 2004/05/10), 'revised 1.05'],
    't/DataPort/Maker.d' => [qw(0.03 2004/05/10), 'revised 0.02'],
    't/DataPort/Maker.pm' => [qw(0.03 2004/05/10), 'revised 0.02'],
    't/DataPort/Maker.t' => [qw(0.03 2004/05/10), 'revised 0.02'],
    't/DataPort/_Maker_/MakerDB.pm' => [qw(0.01 2004/05/10), 'new'],
    't/DataPort/File/SmartNL.pm' => [qw(1.14 2004/05/10), 'new'],
    't/DataPort/Test/Tech.pm' => [qw(1.22 2004/05/10), 'new'],
    't/DataPort/Data/Secs2.pm' => [qw(1.2 2004/05/10), 'new'],
    't/DataPort/Data/SecsPack.pm' => [qw(0.05 2004/05/10), 'new'],
    't/DataPort/Data/Startup.pm' => [qw(0.04 2004/05/10), 'new'],

);

########
# The ExtUtils::SVDmaker module uses the data after the __DATA__ 
# token to automatically generate this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time ExtUtils::SVDmaker generates this file.
#
#



=head1 Title Page

 Software Version Description

 for

 DataPort::Maker - Obsolete. Superceded by File::Maker. Mimics a make by loading a database and calling targets methods

 Revision: D

 Version: 0.05

 Date: 2004/05/10

 Prepared for: General Public 

 Prepared by:  SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>

 Copyright: copyright © 2003 Software Diamonds

 Classification: NONE

=head1 1.0 SCOPE

This paragraph identifies and provides an overview
of the released files.

=head2 1.1 Identification

This release,
identified in L<3.2|/3.2 Inventory of software contents>,
is a collection of Perl modules that
extend the capabilities of the Perl language.

=head2 1.2 System overview

The system is the Perl programming language software.
As established by the Perl referenced documents,
program modules, such the "DataPort::Maker" module, extends the Perl language.

The "DataPort::Maker" provides a "make" style interface
for modules as shown below:
 
 \%targets, @targets, \%options 
 \%targets, @targets 
 \%targets, \%options

The I<\%targets> contains a list of targets that are supplied by the using
program module. The option I<-pm = file> tells "DataPort::Maker" to load
a database from the __DATA__ section of a program module that is in the
L<DataPort::FileType::FormDB|DataPort::FileType::FormDB> format.
This provides a more flexible alternative to the defines in a "makefile".

=head2 1.3 Document overview.

This document releases DataPort::Maker version 0.05
providing description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file 

 DataPort-Maker-0.05.tar.gz

found at the following repository(s):

  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN/authors/id/S/SO/SOFTDIA/

Restrictions regarding duplication and license provisions
are as follows:

=over 4

=item Copyright.

copyright © 2003 Software Diamonds

=item Copyright holder contact.

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=item License.

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

=back

=head2 3.2 Inventory of software contents

The content of the released, compressed, archieve file,
consists of the following files:

 file                                                         version date       comment
 ------------------------------------------------------------ ------- ---------- ------------------------
 lib/Docs/Site_SVD/DataPort_Maker.pm                          0.05    2004/05/10 revised 0.04
 MANIFEST                                                     0.05    2004/05/10 generated, replaces 0.04
 Makefile.PL                                                  0.05    2004/05/10 generated, replaces 0.04
 README                                                       0.05    2004/05/10 generated, replaces 0.04
 lib/DataPort/Maker.pm                                        1.06    2004/05/10 revised 1.05
 t/DataPort/Maker.d                                           0.03    2004/05/10 revised 0.02
 t/DataPort/Maker.pm                                          0.03    2004/05/10 revised 0.02
 t/DataPort/Maker.t                                           0.03    2004/05/10 revised 0.02
 t/DataPort/_Maker_/MakerDB.pm                                0.01    2004/05/10 new
 t/DataPort/File/SmartNL.pm                                   1.14    2004/05/10 new
 t/DataPort/Test/Tech.pm                                      1.22    2004/05/10 new
 t/DataPort/Data/Secs2.pm                                     1.2     2004/05/10 new
 t/DataPort/Data/SecsPack.pm                                  0.05    2004/05/10 new
 t/DataPort/Data/Startup.pm                                   0.04    2004/05/10 new


=head2 3.3 Changes

Changes are as follows:

=over 4

=item DataPort::Maker 0.01

Originated

=item DataPort::Maker 0.02

Adjust for the breakup of "Test::STD::STDutil" and
movement of "Test::STD::Scrub" to "Text::Scrub"

=item DataPort::Maker 0.03

Did not get everything in the last change.

=item DataPort::Maker 0.04

Fixed some things because added new common functions to DataPort::DataFile

Made some error messages more descriptive

Added lastest version for all PREREQ_PM field

Change the test so that test support program modules resides in distribution
directory tlib directory instead of the lib directory. 
Because they are no longer in the lib directory, 
test support files will not be installed as a pre-condition for the 
test of this module.
The test of this module will precede immediately.
The test support files in the tlib directory will vanish after
the installtion.

=item DataPort::Maker 0.05

The lastest build of Test::STDmaker expects the test library in the same
directory as the test script.
Coordiated with the lastest Test::STDmaker by moving the
test library from tlib to t/DataPort, the same directory as the test script
and deleting the test library File::TestPath program module.

Obsolete. Superceded by C<File::Maker>.

=back

=head2 3.4 Adaptation data.

This installation requires that the installation site
has the Perl programming language installed.
There are no other additional requirements or tailoring needed of 
configurations files, adaptation data or other software needed for this
installation particular to any installation site.

=head2 3.5 Related documents.

There are no related documents needed for the installation and
test of this release.

=head2 3.6 Installation instructions.

Instructions for installation, installation tests
and installation support are as follows:

=over 4

=item Installation Instructions.

To installed the release file, use the CPAN module
pr PPM module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

If all else fails, the file may be manually installed.
Enter one of the following repositories in a web browser:

  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN/authors/id/S/SO/SOFTDIA/

Right click on 'DataPort-Maker-0.05.tar.gz' and download to a temporary
installation directory.
Enter the following where $make is 'nmake' for microsoft
windows; otherwise 'make'.

 gunzip DataPort-Maker-0.05.tar.gz
 tar -xf DataPort-Maker-0.05.tar
 perl Makefile.PL
 $make test
 $make install

On Microsoft operating system, nmake, tar, and gunzip 
must be in the exeuction path. If tar and gunzip are
not install, download and install unxutils from

 http://packages.softwarediamonds.com

=item Prerequistes.

 'File::Maker' => '0.01',
 'File::Package' => '1.16',
 'Tie::Form' => '0.01',
 'Tie::Layers' => '0.02',
 'Data::Startup' => '0.02',


=item Security, privacy, or safety precautions.

None.

=item Installation Tests.

Most Perl installation software will run the following test script(s)
as part of the installation:

 t/DataPort/Maker.t

=item Installation support.

If there are installation problems or questions with the installation
contact

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=back

=head2 3.7 Possible problems and known errors

There are no known open issues.

=head1 4.0 NOTES

The following are useful acronyms:

=over 4

=item .d

extension for a Perl demo script file

=item .pm

extension for a Perl Library Module

=item .t

extension for a Perl test script file

=item DID

Data Item Description

=item DOD

Department of Defense

=item POD

Plain Old Documentation

=item SVD

Software Version Description

=item US

United States

=back

=head1 2.0 SEE ALSO

=over 4

=item L<File::Maker|File::Maker>

=back

=for html


=cut

1;

__DATA__

DISTNAME: DataPort-Maker^
REPOSITORY_DIR: packages^

VERSION : 0.05^
FREEZE: 1^
PREVIOUS_DISTNAME:  ^
PREVIOUS_RELEASE: 0.04^
REVISION: D^

AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^

ABSTRACT: Obsolete. Superceded by File::Maker. Mimics a make by loading a database and calling targets methods^

TITLE   : DataPort::Maker - Obsolete. Superceded by File::Maker. Mimics a make by loading a database and calling targets methods^
END_USER: General Public^
COPYRIGHT: copyright © 2003 Software Diamonds^
CLASSIFICATION: NONE^
TEMPLATE:  ^
CSS: help.css^
SVD_FSPEC: Unix^

COMPRESS: gzip^
COMPRESS_SUFFIX: gz^

REPOSITORY: 
  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN/authors/id/S/SO/SOFTDIA/
^

RESTRUCTURE:  ^

CHANGE2CURRENT:  ^

AUTO_REVISE:
lib/DataPort/Maker.pm
t/DataPort/Maker*
t/DataPort/_Maker_/*
lib/File/SmartNL.pm => t/DataPort/File/SmartNL.pm
lib/Test/Tech.pm => t/DataPort/Test/Tech.pm
lib/Data/Secs2.pm => t/DataPort/Data/Secs2.pm
lib/Data/SecsPack.pm => t/DataPort/Data/SecsPack.pm
lib/Data/Startup.pm => t/DataPort/Data/Startup.pm
^

PREREQ_PM: 
'File::Maker' => '0.01',
'File::Package' => '1.16',
'Tie::Form' => '0.01',
'Tie::Layers' => '0.02',
'Data::Startup' => '0.02',
^

README_PODS: lib/DataPort/Maker.pm^
TESTS: t/DataPort/Maker.t ^
EXE_FILES:  ^

CHANGES: 

Changes are as follows:

\=over 4

\=item DataPort::Maker 0.01

Originated

\=item DataPort::Maker 0.02

Adjust for the breakup of "Test::STD::STDutil" and
movement of "Test::STD::Scrub" to "Text::Scrub"

\=item DataPort::Maker 0.03

Did not get everything in the last change.

\=item DataPort::Maker 0.04

Fixed some things because added new common functions to DataPort::DataFile

Made some error messages more descriptive

Added lastest version for all PREREQ_PM field

Change the test so that test support program modules resides in distribution
directory tlib directory instead of the lib directory. 
Because they are no longer in the lib directory, 
test support files will not be installed as a pre-condition for the 
test of this module.
The test of this module will precede immediately.
The test support files in the tlib directory will vanish after
the installtion.

\=item DataPort::Maker 0.05

The lastest build of Test::STDmaker expects the test library in the same
directory as the test script.
Coordiated with the lastest Test::STDmaker by moving the
test library from tlib to t/DataPort, the same directory as the test script
and deleting the test library File::TestPath program module.

Obsolete. Superceded by C<File::Maker>.

\=back

^


DOCUMENT_OVERVIEW:
This document releases ${NAME} version ${VERSION}
providing description of the inventory, installation
instructions and other information necessary to
utilize and track this release.
^

CAPABILITIES:
The system is the Perl programming language software.
As established by the Perl referenced documents,
program modules, such the "DataPort::Maker" module, extends the Perl language.

The "DataPort::Maker" provides a "make" style interface
for modules as shown below:
 
 \%targets, @targets, \%options 
 \%targets, @targets 
 \%targets, \%options

The I<\%targets> contains a list of targets that are supplied by the using
program module. The option I<-pm = file> tells "DataPort::Maker" to load
a database from the __DATA__ section of a program module that is in the
L<DataPort::FileType::FormDB|DataPort::FileType::FormDB> format.
This provides a more flexible alternative to the defines in a "makefile".

^

LICENSE:
Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

\=over 4

\=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

\=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

\=back

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
^


INSTALLATION:
To installed the release file, use the CPAN module
pr PPM module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

If all else fails, the file may be manually installed.
Enter one of the following repositories in a web browser:

${REPOSITORY}

Right click on '${DIST_FILE}' and download to a temporary
installation directory.
Enter the following where $make is 'nmake' for microsoft
windows; otherwise 'make'.

 gunzip ${BASE_DIST_FILE}.tar.${COMPRESS_SUFFIX}
 tar -xf ${BASE_DIST_FILE}.tar
 perl Makefile.PL
 $make test
 $make install

On Microsoft operating system, nmake, tar, and gunzip 
must be in the exeuction path. If tar and gunzip are
not install, download and install unxutils from

 http://packages.softwarediamonds.com
^

SUPPORT: 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>
^


PROBLEMS:
There are no known open issues.
^

SUPPORT:
603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>
^

NOTES:
The following are useful acronyms:

\=over 4

\=item .d

extension for a Perl demo script file

\=item .pm

extension for a Perl Library Module

\=item .t

extension for a Perl test script file

\=item DID

Data Item Description

\=item DOD

Department of Defense

\=item POD

Plain Old Documentation

\=item SVD

Software Version Description

\=item US

United States

\=back
^

SEE_ALSO:

\=over 4

\=item L<File::Maker|File::Maker>

\=back

^

HTML: ^


~-~






















