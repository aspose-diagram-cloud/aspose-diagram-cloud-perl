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


use_ok('AsposeDiagramCloud::OAuthApi');
use_ok('AsposeDiagramCloud::Configuration');
use_ok('AsposeDiagramCloud::ApiClient');
use_ok('AsposeDiagramCloud::Object::FileFormatRequest');
use_ok('AsposeDiagramCloud::DiagramFileApi');

require 't\TestBase.pl';
my $new_client = get_client();
my $api = AsposeDiagramCloud::DiagramFileApi->new( $new_client);
my $TEMPFOLDER = 'Temp';

isa_ok($api, 'AsposeDiagramCloud::DiagramFileApi');

#
# diagram_file_get_diagram test
#
{
    my $name = 'file_get_1.vdx'; # replace NULL with a proper value
    my $format = 'pdf'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $storage = undef; # replace NULL with a proper value
    my $result = $api->diagram_file_get_diagram(name => $name, format => $format, folder => $folder, storage => $storage);
    
}

#
# diagram_file_post_save_as test
#
{
    my $name = 'file_get_1.vdx'; # replace NULL with a proper value
    my $format = AsposeDiagramCloud::Object::FileFormatRequest->new (Format => 'pdf'); # replace NULL with a proper value
    my $newfilename = 'file_savaas_perl'; # replace NULL with a proper value
    my $folder =  $TEMPFOLDER; # replace NULL with a proper value
    my $is_overwrite = 'true'; # replace NULL with a proper value
    my $storage = undef; # replace NULL with a proper value
    my $result = $api->diagram_file_post_save_as(name => $name, format => $format, newfilename => $newfilename, folder => $folder, is_overwrite => $is_overwrite, storage => $storage);
    printf $result;
    printf "\n";
}

#
# diagram_file_put_create test
#
{
    my $name = 'file_create_perl'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $is_overwrite = 'true'; # replace NULL with a proper value
    my $storage = undef; # replace NULL with a proper value
    my $result = $api->diagram_file_put_create(name => $name, folder => $folder, is_overwrite => $is_overwrite, storage => $storage);
    printf $result;
    printf "\n";
}

#
# diagram_file_put_upload test
#
{
    my $name = 'file_upload_perl.vdx'; # replace NULL with a proper value
    #printf $body;
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $is_overwrite = 'true'; # replace NULL with a proper value
    my $storage = undef; # replace NULL with a proper value

    my $localfilePath='D:/test.vdx';
    my $localfileName='test.vdx';
    my $body= undef;
    open (FH, $localfilePath);
    $body =do { local $/=undef; <FH>; };
    close FH;

    my $result = $api->diagram_file_put_upload(name => $name, folder => $folder, is_overwrite => $is_overwrite, storage => $storage, localfileName=> $localfileName, body=> $body);
}


1;
