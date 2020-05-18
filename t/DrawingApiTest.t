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
use AsposeDiagramCloud::Object::PolylineData;
use AsposeDiagramCloud::Object::LineData;
use AsposeDiagramCloud::Object::EllipseData;
use AsposeDiagramCloud::Object::ShapeStyleData;
use AsposeDiagramCloud::Object::TextStyleData;

require 't\TestBase.pl';
my $diagram_api = get_diagram_api();

my $TEMPFOLDER = 'SDKTests/Perl';
my $file_name="drawingTest.vsdx";
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
# draw polyline on the page.
#
{
    my $draw_data=AsposeDiagramCloud::Object::PolylineData->new();
    $draw_data->{pin_x} = 3;
    $draw_data->{pin_y} = 3;
    $draw_data->{width} = 1;
    $draw_data->{height} = 1;
    $draw_data->{points} =[AsposeDiagramCloud::Object::PointF->new(X=>0,Y=>0),
    AsposeDiagramCloud::Object::PointF->new(X=>0,Y=>1),
    AsposeDiagramCloud::Object::PointF->new(X=>1,Y=>1),
    AsposeDiagramCloud::Object::PointF->new(X=>1,Y=>0)];
    $draw_data->{text} = "test draw polyline";
    my $shapeStyleData = AsposeDiagramCloud::Object::ShapeStyleData->new();
    $shapeStyleData->{back_ground_color} = "#FF0000";
    my $textStyleData = AsposeDiagramCloud::Object::TextStyleData->new();
    $textStyleData->{font_size} = 0.2;
    $textStyleData->{font_name} = "Times New Roman";
    $draw_data->{shape_style_data} = $shapeStyleData;
    $draw_data->{text_style_data} = $textStyleData;
    my $result = $diagram_api->diagram_name_pages_page_name_draw_polyline_put(name => $file_name, page_name=>$page_name,polyline_data=>$draw_data,folder => $TEMPFOLDER);
    printf $result;
    printf "\n";
}

#
# draw ellipse on the page.
#
{
    my $draw_data=AsposeDiagramCloud::Object::EllipseData->new();
    $draw_data->{pin_x} = 5;
    $draw_data->{pin_y} = 5;
    $draw_data->{width} = 1;
    $draw_data->{height} = 1;
    $draw_data->{text} = "test draw ellipse";
    my $shapeStyleData = AsposeDiagramCloud::Object::ShapeStyleData->new();
    $shapeStyleData->{back_ground_color} = "#FF0000";
    my $textStyleData = AsposeDiagramCloud::Object::TextStyleData->new();
    $textStyleData->{font_size} = 0.2;
    $textStyleData->{font_name} = "Times New Roman";
    $draw_data->{shape_style_data} = $shapeStyleData;
    $draw_data->{text_style_data} = $textStyleData;
    my $result = $diagram_api->diagram_name_pages_page_name_draw_ellipse_put(name => $file_name, page_name=>$page_name,ellipse_data=>$draw_data,folder => $TEMPFOLDER);
    printf $result;
    printf "\n";
}

#
# draw line on the page.
#
{
    my $draw_data=AsposeDiagramCloud::Object::LineData->new();
    $draw_data->{pin_x} = 1;
    $draw_data->{pin_y} = 2;
    $draw_data->{width} = 1;
    $draw_data->{height} = 1;
    $draw_data->{points} =[AsposeDiagramCloud::Object::PointF->new(X=>1,Y=>0),
    AsposeDiagramCloud::Object::PointF->new(X=>1,Y=>1)];
    $draw_data->{text} = "test draw line";
    my $shapeStyleData = AsposeDiagramCloud::Object::ShapeStyleData->new();
    $shapeStyleData->{back_ground_color} = "#FF0000";
    my $textStyleData = AsposeDiagramCloud::Object::TextStyleData->new();
    $textStyleData->{font_size} = 0.2;
    $textStyleData->{font_name} = "Times New Roman";
    $draw_data->{shape_style_data} = $shapeStyleData;
    $draw_data->{text_style_data} = $textStyleData;
    my $result = $diagram_api->diagram_name_pages_page_name_draw_line_put(name => $file_name, page_name=>$page_name,line_data=>$draw_data,folder => $TEMPFOLDER);
    printf $result;
    printf "\n";
}


1;
