# AsposeDiagramCloud::OAuthApi

## Load the API package
```perl
use AsposeDiagramCloud::Object::OAuthApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**o_auth_post**](OAuthApi.md#o_auth_post) | **POST** /oauth2/token | Get Access token


# **o_auth_post**
> AccessTokenResponse o_auth_post(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret)

Get Access token

### Example 
```perl
use Data::Dumper;
use AsposeDiagramCloud::OAuthApi;
my $api_instance = AsposeDiagramCloud::OAuthApi->new(
);

my $grant_type = 'grant_type_example'; # string | Grant Type
my $client_id = 'client_id_example'; # string | App SID
my $client_secret = 'client_secret_example'; # string | App Key

eval { 
    my $result = $api_instance->o_auth_post(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OAuthApi->o_auth_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **string**| Grant Type | 
 **client_id** | **string**| App SID | 
 **client_secret** | **string**| App Key | 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

