=begin comment

=end comment

=cut


use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;
use Cwd;

use AsposeDiagramCloud::Configuration;
use AsposeDiagramCloud::ApiClient;
use AsposeDiagramCloud::DiagramApi;
use AsposeDiagramCloud::StorageApi;
use AsposeDiagramCloud::Object::SaveOptionsRequest;
use AsposeDiagramCloud::Object::PageSetting;

require 't\TestBase.pl';
my $diagram_api = get_diagram_api();

my $TEMPFOLDER = 'SDKTests/Perl';
my $file_name="pageTest.vsdx";
my $is_overwrite = 'true';
my $storage = undef;
my $page_name="Page-0";

#
# Create Empty file into the specified format
#
{
    my $result = $diagram_api->diagram_name_put(name => $file_name, folder => $TEMPFOLDER, is_overwrite => $is_overwrite, storage => $storage);
    printf $result;
    printf "\n";
}

#
# Add new empty page
#
{
    my $result = $diagram_api->diagram_name_pages_add_new_put(name => $file_name, page_name=>"newPage",folder => $TEMPFOLDER);
    printf $result;
    printf "\n";
}

#
# Read pages info.
#
{
    my $result = $diagram_api->diagram_name_pages_get(name => $file_name,folder => $TEMPFOLDER);
    printf $result;
    printf "\n";
}

#
# page setup.
#
{
    my $page_setting=AsposeDiagramCloud::Object::PageSetting->new(page_width=>4,page_height=>4);
    my $result = $diagram_api->diagram_name_pages_page_setup_post(name => $file_name, page_name=>$page_name,page_setting=>$page_setting,folder => $TEMPFOLDER);
    printf $result;
    printf "\n";
}
1;
