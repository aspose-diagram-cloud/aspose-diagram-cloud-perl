# AsposeDiagramCloud::DiagramFileApi

## Load the API package
```perl
use AsposeDiagramCloud::Object::DiagramFileApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**diagram_file_get_diagram**](DiagramFileApi.md#diagram_file_get_diagram) | **GET** /diagram/{name} | Read document info or export.
[**diagram_file_post_save_as**](DiagramFileApi.md#diagram_file_post_save_as) | **POST** /diagram/{name}/SaveAs | Convert document and save result to storage.
[**diagram_file_put_create**](DiagramFileApi.md#diagram_file_put_create) | **PUT** /diagram/{name} | Create new diagram and save result to storage.
[**diagram_file_put_upload**](DiagramFileApi.md#diagram_file_put_upload) | **PUT** /diagram/{name}/upload | Upload file and save result to storage.


# **diagram_file_get_diagram**
> string diagram_file_get_diagram(name => $name, format => $format, folder => $folder, storage => $storage)

Read document info or export.

### Example 
```perl
use Data::Dumper;
use AsposeDiagramCloud::DiagramFileApi;
my $api_instance = AsposeDiagramCloud::DiagramFileApi->new(
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **format** | **string**| The exported file format. | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **diagram_file_post_save_as**
> SaveResponse diagram_file_post_save_as(name => $name, format => $format, newfilename => $newfilename, folder => $folder, is_overwrite => $is_overwrite, storage => $storage)

Convert document and save result to storage.

### Example 
```perl
use Data::Dumper;
use AsposeDiagramCloud::DiagramFileApi;
my $api_instance = AsposeDiagramCloud::DiagramFileApi->new(
);

my $name = 'name_example'; # string | The document name.
my $format = AsposeDiagramCloud::Object::FileFormatRequest->new(); # FileFormatRequest | Save format.
my $newfilename = 'newfilename_example'; # string | The new file name.
my $folder = 'folder_example'; # string | The document folder.
my $is_overwrite = 1; # boolean | If true overwrite the same name file.The default value is false.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->diagram_file_post_save_as(name => $name, format => $format, newfilename => $newfilename, folder => $folder, is_overwrite => $is_overwrite, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiagramFileApi->diagram_file_post_save_as: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **format** | [**FileFormatRequest**](FileFormatRequest.md)| Save format. | [optional] 
 **newfilename** | **string**| The new file name. | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **is_overwrite** | **boolean**| If true overwrite the same name file.The default value is false. | [optional] [default to false]
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaveResponse**](SaveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **diagram_file_put_create**
> SaaSposeResponse diagram_file_put_create(name => $name, folder => $folder, is_overwrite => $is_overwrite, storage => $storage)

Create new diagram and save result to storage.

### Example 
```perl
use Data::Dumper;
use AsposeDiagramCloud::DiagramFileApi;
my $api_instance = AsposeDiagramCloud::DiagramFileApi->new(
);

my $name = 'name_example'; # string | The new document name.
my $folder = 'folder_example'; # string | The new document folder.
my $is_overwrite = 1; # boolean | If true overwrite the same name file.The default value is false.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->diagram_file_put_create(name => $name, folder => $folder, is_overwrite => $is_overwrite, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiagramFileApi->diagram_file_put_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The new document name. | 
 **folder** | **string**| The new document folder. | [optional] 
 **is_overwrite** | **boolean**| If true overwrite the same name file.The default value is false. | [optional] [default to false]
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **diagram_file_put_upload**
> SaaSposeResponse diagram_file_put_upload(name => $name, folder => $folder, is_overwrite => $is_overwrite, storage => $storage)

Upload file and save result to storage.

### Example 
```perl
use Data::Dumper;
use AsposeDiagramCloud::DiagramFileApi;
my $api_instance = AsposeDiagramCloud::DiagramFileApi->new(
);

my $name = 'name_example'; # string | The document name.
my $folder = 'folder_example'; # string | The document folder.
my $is_overwrite = 1; # boolean | If true overwrite the same name file.The default value is false.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->diagram_file_put_upload(name => $name, folder => $folder, is_overwrite => $is_overwrite, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiagramFileApi->diagram_file_put_upload: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **folder** | **string**| The document folder. | [optional] 
 **is_overwrite** | **boolean**| If true overwrite the same name file.The default value is false. | [optional] [default to false]
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

