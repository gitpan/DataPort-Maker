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
$VERSION = '0.03';
$DATE = '2003/07/10';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/DataPort_Maker.pm' => [qw(0.03 2003/07/10), 'revised 0.02'],
    'MANIFEST' => [qw(0.03 2003/07/10), 'generated, replaces 0.02'],
    'Makefile.PL' => [qw(0.03 2003/07/10), 'generated, replaces 0.02'],
    'README' => [qw(0.03 2003/07/10), 'generated, replaces 0.02'],
    'lib/DataPort/Maker.pm' => [qw(1.03 2003/07/05), 'unchanged'],
    't/DataPort/Maker.d' => [qw(0.01 2003/07/07), 'unchanged'],
    't/DataPort/Maker.pm' => [qw(0.01 2003/06/07), 'unchanged'],
    't/DataPort/Maker.t' => [qw(0.01 2003/07/07), 'unchanged'],
    't/DataPort/MakerDB.pm' => [qw(0.01 2003/07/04), 'unchanged'],

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

 DataPort::FilteType::FormDB - Text Form Datatbase with advantages over CSV

 Revision: B

 Version: 0.03

 Date: 2003/07/10

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

This document releases DataPort::Maker version 0.03
providing description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file found
at the following repository(s):

   http://www.softwarediamonds/packages/DataPort-Maker-0.03
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/DataPort-Maker-0.03


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
 lib/Docs/Site_SVD/DataPort_Maker.pm                          0.03    2003/07/10 revised 0.02
 MANIFEST                                                     0.03    2003/07/10 generated, replaces 0.02
 Makefile.PL                                                  0.03    2003/07/10 generated, replaces 0.02
 README                                                       0.03    2003/07/10 generated, replaces 0.02
 lib/DataPort/Maker.pm                                        1.03    2003/07/05 unchanged
 t/DataPort/Maker.d                                           0.01    2003/07/07 unchanged
 t/DataPort/Maker.pm                                          0.01    2003/06/07 unchanged
 t/DataPort/Maker.t                                           0.01    2003/07/07 unchanged
 t/DataPort/MakerDB.pm                                        0.01    2003/07/04 unchanged


=head2 3.3 Changes

Changes are as follows:

=over 4

=item DataPort::Maker 0.02

Adjust for the breakup of "Test::STD::STDutil" and
movement of "Test::STD::Scrub" to "Text::Scrub"

=item DataPort::Maker 0.03

Did not get everything in the last change.

=back

=head2 3.4 Adaptation data.

This installation requires that the installation site
has the Perl programming language installed.
Installation sites running Microsoft Operating systems require
the installation of Unix utilities. 
An excellent, highly recommended Unix utilities for Microsoft
operating systems is unxutils by Karl M. Syring.
A copy is available at the following web sites:

 http://unxutils.sourceforge.net
 http://packages.SoftwareDiamnds.com

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

To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

   http://www.softwarediamonds/packages/DataPort-Maker-0.03
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/DataPort-Maker-0.03


=item Prerequistes.

 'File::SmartNL' => '0',
 'File::Package' => '0',
 'File::TestPath' => '0',
 'File::Data' => '0',
 'Text::Scrub' => '1.07',
 'Test::Tech' => '1.08',
 'DataPort::DataFile' => '0',
 'DataPort::FileType::FormDB' => '0',


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

 L<DataPort::Maker|DataPort::Maker>

=for html
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

1;

__DATA__

DISTNAME: DataPort-Maker^
REPOSITORY_DIR: packages^

VERSION : 0.03^
FREEZE: 1^
PREVIOUS_DISTNAME:  ^
PREVIOUS_RELEASE: 0.02^
REVISION: B^

AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^

ABSTRACT: 
Text Form Datatbase with advantages over CSV that has text separation
sequences with very simple escapes so the separation sequences never
appear in the data.
^

TITLE   : DataPort::FilteType::FormDB - Text Form Datatbase with advantages over CSV^
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
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/
^

RESTRUCTURE:  ^

CHANGE2CURRENT:  ^

AUTO_REVISE:
lib/DataPort/Maker.pm
t/DataPort/Maker*
^

PREREQ_PM: 
'File::SmartNL' => '0',
'File::Package' => '0',
'File::TestPath' => '0',
'File::Data' => '0',
'Text::Scrub' => '1.07',
'Test::Tech' => '1.08',
'DataPort::DataFile' => '0',
'DataPort::FileType::FormDB' => '0',
^

TESTS: t/DataPort/Maker.t ^
EXE_FILES:  ^

CHANGES: 

Changes are as follows:

\=over 4

\=item DataPort::Maker 0.02

Adjust for the breakup of "Test::STD::STDutil" and
movement of "Test::STD::Scrub" to "Text::Scrub"

\=item DataPort::Maker 0.03

Did not get everything in the last change.

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
To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

${REPOSITORY}
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

 L<DataPort::Maker|DataPort::Maker>



^

HTML:
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^
~-~


