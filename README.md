![](https://img.shields.io/badge/api-v3.0-lightgrey) ![CPAN](https://img.shields.io/cpan/v/AsposeDiagramCloud-DiagramApi) [![GitHub license](https://img.shields.io/github/license/aspose-diagram-cloud/aspose-Diagram-cloud-perl)](https://github.com/aspose-diagram-cloud/aspose-Diagram-cloud-perl/blob/master/LICENSE) ![GitHub last commit](https://img.shields.io/github/last-commit/Aspose-Diagram-Cloud/aspose-diagram-cloud-perl)

# Perl Cloud REST API for Visio Processing

Cloud SDK enables your Perl cloud apps to [Create & Convert Visio Diagrams](https://products.aspose.cloud/diagram/perl) from within your own apps without installing Microsoft Visio.

## Visio Processing Features

- [Convert diagrams](https://docs.aspose.cloud/diagram/convert-diagram-file-to-another-format/) to 20+ different file formats.
- Retrieve document information of a Visio diagram.
- Programmatically create a new Microsoft Visio diagram file.
- Convert Visio flow-charts to other supported formats.
- Upload your business-oriented Visio diagrams to cloud storage.
- Export Visio files to raster images, fixed-layout, and HTML formats.

## Read & Write Visio Formats

**Microsoft Visio:** VSDX, VSX, VTX, VDX, VSSX, VSTX, VSDM, VSSM, VSTM

## Save Visio As

**Fixed Layout:** PDF, XPS
**Images:** JPEG, PNG, BMP, TIFF, SVG, EMF
**Web:** HTML
**Other:** XAML, SWF

## Read Visio Formats

**Microsoft Visio:** VDW, VSD, VSS, VST



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


## Create New VDX Diagram in Perl

```perl
	# Get your ClientId and ClientSecret from https://dashboard.aspose.cloud (free registration required).
    my $config = AsposeDiagramCloud::Configuration->new(app_sid => 'MY_CLIENT_ID', app_key => 'MY_CLIENT_SECRET');
    my $client = AsposeDiagramCloud::ApiClient->new( $config);
    
	my $diagram_api = AsposeDiagramCloud::DiagramApi->new($client);
	
	my $result = $diagram_api->diagram_name_put(name => 'sample.vdx', folder => 'output', is_overwrite => 'true', storage => 'My_Storage_Name');
```
## Aspose.Diagram Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Perl | Swift |
|---|---|---|---|---|---|---|---|---|
| [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-dotnet) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-java) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-php) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-python) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-ruby)  | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-node) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-android) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-perl) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-swift) |
| [NuGet](https://www.nuget.org/packages/Aspose.Diagram-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-diagram-cloud) | [Composer](https://packagist.org/packages/aspose/diagram-sdk-php) | [PIP](https://pypi.org/project/asposediagramcloud/) | [GEM](https://rubygems.org/gems/aspose_diagram_cloud)  | [NPM](https://www.npmjs.com/package/asposediagramcloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-diagram-cloud-android) |  [CPAN](https://metacpan.org/release/AsposeDiagramCloud-DiagramApi) | [POD](https://cocoapods.org/pods/AsposeDiagramCloud) |

[Home](https://www.aspose.cloud) | [Product Page](https://products.aspose.cloud/diagram/perl) | [Documentation](https://docs.aspose.cloud/diagram/) | [Live Demo](https://products.aspose.app/diagram/family) | [API Reference](https://apireference.aspose.cloud/diagram/) | [Code Samples](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-perl/tree/master/t) | [Blog](https://blog.aspose.cloud/category/diagram/) | [Free Support](https://forum.aspose.cloud/c/diagram) | [Free Trial](https://dashboard.aspose.cloud/)
