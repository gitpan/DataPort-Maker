
####
# 
# The module ExtUtils::STDmaker generated this file from the contents of
#
# Docs::Site_SVD::DataPort_Maker 
#
# Don't edit this file, edit instead
#
# Docs::Site_SVD::DataPort_Maker
#
#	ANY CHANGES MADE HERE WILL BE LOST
#
#       the next time ExtUtils::STDmaker generates it.
#
#

use ExtUtils::MakeMaker;

my $tests = join ' ',unix2os('t/DataPort/Maker.t');


WriteMakefile(
    NAME => 'DataPort::Maker',
    DISTNAME => 'DataPort-Maker',
    VERSION  => '0.02',
    dist     => {COMPRESS => 'gzip',
                'gz' => 'gz'},
    test     => {TESTS => $tests},
    PREREQ_PM => {'File::SmartNL' => '0',
                  'File::Package' => '0',
                  'File::TestPath' => '0',
                  'File::Data' => '0',
                  'Test::STD::Scrub' => '0',
                  'Test::Tech' => '1.08',
                  'Text::Scrub' => '1.07',
                  'DataPort::DataFile' => '0',
                  'DataPort::FileType::FormDB' => '0',},
    

    ($] >= 5.005 ?     
        (AUTHOR    => 'SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>',
        ABSTRACT  => 'Text Form Datatbase with advantages over CSV that has text separation
sequences with very simple escapes so the separation sequences never
appear in the data.', ) : ()),
);



use File::Spec;
use File::Spec::Unix;
sub unix2os
{
   my @file = ();
   foreach my $file (@_) {
       my (undef, $dir, $file_unix) = File::Spec::Unix->splitpath( $file );
       my @dir = File::Spec::Unix->splitdir( $dir );
       push @file, File::Spec->catfile( @dir, $file_unix);
   }
   @file;
}

