=begin comment

Web API Swagger specification

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
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
use File::Slurp;
use JSON;

require 't\TestBase.pl';
my $diagram_api = get_diagram_api();
my $storage_api = get_storage_api();

my $TEMPFOLDER = 'SDKTests/Perl';
my $file_name="FileUpload.vsdx";
my $is_overwrite = 'true';
my $storage = undef;

#isa_ok($diagram_api, 'AsposeDiagramCloud::DiagramApi');


#upload file test
{
    my $name = 'FileUpload.vsdx'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $fullfilename = "SDKTests\\Perl\\".$name; # replace NULL with a proper value
    my $dir = getcwd;
    my $localfilePath=$dir."/testData/FileUpload.vsdx";
    my $file=read_file( $localfilePath , binmode => ':raw' );
    my $result = $storage_api->diagram_storage_file_path_put(path=>$fullfilename, file=> $file);
    #printf encode_json $result;
    printf $result;
    printf "\n";
}


#
# Create Empty file into the specified format
#
{
    my $result = $diagram_api->diagram_name_put(name => "create_perl.vsdx", folder => $TEMPFOLDER, is_overwrite => $is_overwrite, storage => $storage);
    printf $result;
    printf "\n";
}


#Exports the document into the specified format.
{
    my $format="png";
    my $result = $diagram_api->diagram_name_get(name => $file_name, folder => $TEMPFOLDER, format => $format, storage => $storage);
    #printf $result;
    printf "\n";
}

#
# Save As pdf
#
{
    my $request =  AsposeDiagramCloud::Object::SaveOptionsRequest->new();
    $request->{file_name}="FileSaveAs.pdf";
    $request->{folder}=$TEMPFOLDER;
    my $result = $diagram_api->diagram_name_save_as_post(name => $file_name, folder => $TEMPFOLDER,save_options_request => $request,is_overwrite => $is_overwrite, storage => $storage);
    printf $result;
    printf "\n";
}

#
# Save As png
#
{
    my $request =  AsposeDiagramCloud::Object::SaveOptionsRequest->new();
    $request->{file_name}="FileSaveAs.png";
    $request->{folder}=$TEMPFOLDER;

    my $result = $diagram_api->diagram_name_save_as_post(name => $file_name, folder => $TEMPFOLDER,save_options_request => $request,is_overwrite => $is_overwrite, storage => $storage);
    printf $result;
    printf "\n";
}


1;
