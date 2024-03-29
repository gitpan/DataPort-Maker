
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
    VERSION  => '0.05',
    dist     => {COMPRESS => 'gzip',
                'gz' => 'gz'},
    test     => {TESTS => $tests},
    PREREQ_PM => {'File::Maker' => '0.01',
                  'File::Package' => '1.16',
                  'Tie::Form' => '0.01',
                  'Tie::Layers' => '0.02',
                  'Data::Startup' => '0.02',},
    

    ($] >= 5.005 ?     
        (AUTHOR    => 'SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>',
        ABSTRACT  => 'Obsolete. Superceded by File::Maker. Mimics a make by loading a database and calling targets methods', ) : ()),
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

