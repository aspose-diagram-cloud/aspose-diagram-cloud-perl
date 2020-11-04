![](https://img.shields.io/badge/api-v3.0-lightgrey) ![CPAN](https://img.shields.io/cpan/v/AsposeDiagramCloud-DiagramApi) [![GitHub license](https://img.shields.io/github/license/aspose-diagram-cloud/aspose-Diagram-cloud-perl)](https://github.com/aspose-diagram-cloud/aspose-Diagram-cloud-perl/blob/master/LICENSE) ![GitHub last commit](https://img.shields.io/github/last-commit/Aspose-Diagram-Cloud/aspose-diagram-cloud-perl) 

# Perl SDK to Process Visio® Files in the Cloud

Cloud SDK enables your Perl cloud apps to [Create & Convert Visio Diagrams](https://products.aspose.cloud/diagram/perl) from within your own apps without installing Microsoft Visio.

## Aspose.Drawing REST API for Drawings

- Programmatically create a new Microsoft Visio diagram file.
- Convert Visio flow-charts to other supported formats.
- Render Visio files to raster images, fixed-layout and HTML formats.
- Upload your business oriented Visio diagrams to cloud storage.
- Retrieve document information of a Visio diagram.

## New Features in Version 20.3

- Added support to:
  - Set page settings
  - Add an empty page
  - Get pages information
- Added support to draw following objects on a page:
  - Polyline
  - Line
  - Ellipse

For the detailed notes, please visit [Aspose.Diagram Cloud 20.3 Release Notes](https://docs.aspose.cloud/diagram/aspose-diagram-cloud-20-3-release-notes/).

## Read & Write Visio Formats

**Microsoft Visio:** VSDX, VSX, VTX, VDX, VSSX, VSTX, VSDM, VSSM, VSTM

## Save Visio As

**Fixed Layout:** PDF, XPS
**Images:** JPEG, PNG, BMP, TIFF, SVG, EMF
**Web:** HTML
**Other:** XAML, SWF

## Read Visio Formats

**Microsoft Visio:** VDW, VSD, VSS, VST

## Synopsis

The Perl Swagger Codegen project builds a library of Perl modules to interact with a web service defined by a OpenAPI Specification. See below for how to build the library.

This module provides an interface to the generated library. All the classes, objects, and methods (well, not quite *all*, see below) are flattened into this role.

```perl
package MyApp;
use Moose;
with 'AsposeDiagramCloud::Role';

package main;

my $api = MyApp->new({ tokens => $tokens });

my $pet = $api->get_pet_by_id(pet_id => $pet_id);
```

## Configuring Authentication

In the normal case, the OpenAPI Spec will describe what parameters are required and where to put them. You just need to supply the tokens.

```perl
my $tokens = {
    # basic
    username => $username,
    password => $password,

    # oauth
    access_token => $oauth_token,

    # keys
    $some_key => { token => $token,
        prefix => $prefix,
        in => $in,             # 'head||query',
    },

    $another => { token => $token,
        prefix => $prefix,
        in => $in,              # 'head||query',
    },
...,

};

my $api = MyApp->new({ tokens => $tokens });
```

**Note these are all optional, as are `prefix` and `in`, and depend on the API you are accessing. Usually `prefix` and `in` will be determined by the code generator from the spec and you will not need to set them at run time. If not, `in` will default to 'head' and `prefix` to the empty string.**

The tokens will be placed in a LAsposeDiagramCloud::Configuration instance as follows, but you don't need to know about this.

- `$cfg->{username}`
  - String. The username for basic auth.
- `$cfg->{password}`
  - String. The password for basic auth.
- `$cfg->{api_key}`
  - Hashref. Keyed on the name of each key (there can be multiple tokens).
  ```perl
    $cfg->{api_key} = {
        secretKey => 'aaaabbbbccccdddd',
        anotherKey => '1111222233334444',
    };
  ```
- `$cfg->{api_key_prefix}`
  - Hashref. Keyed on the name of each key (there can be multiple tokens). Note not all api keys require a prefix.
  ```perl
    $cfg->{api_key_prefix} = {
        secretKey => 'string',
        anotherKey => 'same or some other string',
    };
  ```
- `$cfg->{access_token}`
  - String. The OAuth access token.

## Load the Modules

To load the API packages:

```perl
use AsposeDiagramCloud::DiagramFileApi;
use AsposeDiagramCloud::OAuthApi;
```

To load the models:

```perl
use AsposeDiagramCloud::Object::DiagramModel;
use AsposeDiagramCloud::Object::Link;
use AsposeDiagramCloud::Object::PageModel;
use AsposeDiagramCloud::Object::SaaSposeResponse;
use AsposeDiagramCloud::Object::SaveResult;
use AsposeDiagramCloud::Object::SharpModel;
use AsposeDiagramCloud::Object::DiagramResponse;
use AsposeDiagramCloud::Object::SaveResponse;
```

## Get Started with Aspose.Diagram Cloud

Put the Perl SDK under the 'lib' folder in your project directory, then run the following

```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use AsposeDiagramCloud::DiagramFileApi;
use AsposeDiagramCloud::OAuthApi;

# load the models
use AsposeDiagramCloud::Object::DiagramModel;
use AsposeDiagramCloud::Object::Link;
use AsposeDiagramCloud::Object::PageModel;
use AsposeDiagramCloud::Object::SaaSposeResponse;
use AsposeDiagramCloud::Object::SaveResult;
use AsposeDiagramCloud::Object::SharpModel;
use AsposeDiagramCloud::Object::DiagramResponse;
use AsposeDiagramCloud::Object::SaveResponse;

# for displaying the API response data
use Data::Dumper;
use AsposeDiagramCloud::;

my $api_instance = AsposeDiagramCloud::->new(
);

my $name = 'name_example'; # string | The document name.
my $format = 'format_example'; # string | The exported file format.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval {
    my $result = $api_instance->diagram_file_get_diagram(name => $name, format => $format, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiagramFileApi->diagram_file_get_diagram: $@\n";
}
```
## Aspose.Diagram Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Perl | Swift |
|---|---|---|---|---|---|---|---|---|
| [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-dotnet) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-java) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-php) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-python) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-ruby)  | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-node) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-android) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-perl) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-swift) |
| [NuGet](https://www.nuget.org/packages/Aspose.Diagram-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-diagram-cloud) | [Composer](https://packagist.org/packages/aspose/diagram-sdk-php) | [PIP](https://pypi.org/project/asposediagramcloud/) | [GEM](https://rubygems.org/gems/aspose_diagram_cloud)  | [NPM](https://www.npmjs.com/package/asposediagramcloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-diagram-cloud-android) |  [CPAN](https://metacpan.org/release/AsposeDiagramCloud-DiagramApi) | [POD](https://cocoapods.org/pods/AsposeDiagramCloud) |

[Home](https://www.aspose.cloud) | [Product Page](https://products.aspose.cloud/diagram/perl) | [Documentation](https://docs.aspose.cloud/diagram/) | [Live Demo](https://products.aspose.app/diagram/family) | [API Reference](https://apireference.aspose.cloud/diagram/) | [Code Samples](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-perl/tree/master/t) | [Blog](https://blog.aspose.cloud/category/diagram/) | [Free Support](https://forum.aspose.cloud/c/diagram) | [Free Trial](https://dashboard.aspose.cloud/)
