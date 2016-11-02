# TriglavClient::ResourcesApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_resource**](ResourcesApi.md#create_resource) | **POST** /resources | 
[**delete_resource**](ResourcesApi.md#delete_resource) | **DELETE** /resources/{id_or_uri} | 
[**get_resource**](ResourcesApi.md#get_resource) | **GET** /resources/{id_or_uri} | 
[**list_mon_resources**](ResourcesApi.md#list_mon_resources) | **GET** /mon_resources | 
[**list_resources**](ResourcesApi.md#list_resources) | **GET** /resources | 
[**update_resource**](ResourcesApi.md#update_resource) | **PATCH** /resources/{id_or_uri} | 


# **create_resource**
> ResourceResponse create_resource(resource)



Creates a new resource

### Example
```ruby
# load the gem
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ResourcesApi.new

resource = TriglavClient::ResourceRequest.new # ResourceRequest | Resource to add


begin
  result = api_instance.create_resource(resource)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ResourcesApi->create_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**ResourceRequest**](ResourceRequest.md)| Resource to add | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_resource**
> delete_resource(id_or_uri)



Deletes single resource

### Example
```ruby
# load the gem
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ResourcesApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of resource to fetch


begin
  api_instance.delete_resource(id_or_uri)
rescue TriglavClient::ApiError => e
  puts "Exception when calling ResourcesApi->delete_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of resource to fetch | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_resource**
> ResourceResponse get_resource(id_or_uri)



Returns a single resource

### Example
```ruby
# load the gem
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ResourcesApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of resource to fetch


begin
  result = api_instance.get_resource(id_or_uri)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ResourcesApi->get_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of resource to fetch | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_mon_resources**
> Array&lt;ResourceEachResponse&gt; list_mon_resources(uri_prefix)



Returns resources required to be monitored

### Example
```ruby
# load the gem
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ResourcesApi.new

uri_prefix = "uri_prefix_example" # String | Prefix of Resource URI


begin
  result = api_instance.list_mon_resources(uri_prefix)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ResourcesApi->list_mon_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri_prefix** | **String**| Prefix of Resource URI | 

### Return type

[**Array&lt;ResourceEachResponse&gt;**](ResourceEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_resources**
> Array&lt;ResourceEachResponse&gt; list_resources(opts)



Returns all resources

### Example
```ruby
# load the gem
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ResourcesApi.new

opts = { 
  uri_prefix: "uri_prefix_example" # String | Prefix of Resource URI
}

begin
  result = api_instance.list_resources(opts)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ResourcesApi->list_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri_prefix** | **String**| Prefix of Resource URI | [optional] 

### Return type

[**Array&lt;ResourceEachResponse&gt;**](ResourceEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_resource**
> ResourceResponse update_resource(id_or_uri, resource)



Updates a single resource

### Example
```ruby
# load the gem
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ResourcesApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of resource to fetch

resource = TriglavClient::ResourceRequest.new # ResourceRequest | Resource parameters to update


begin
  result = api_instance.update_resource(id_or_uri, resource)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ResourcesApi->update_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of resource to fetch | 
 **resource** | [**ResourceRequest**](ResourceRequest.md)| Resource parameters to update | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



