# TriglavClientBase::ResourceApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_resource**](ResourceApi.md#add_resource) | **POST** /resources | 
[**delete_resource_by_id_or_uri**](ResourceApi.md#delete_resource_by_id_or_uri) | **DELETE** /resources/{id_or_uri} | 
[**find_resource_by_id_or_uri**](ResourceApi.md#find_resource_by_id_or_uri) | **GET** /resources/{id_or_uri} | 
[**find_resources**](ResourceApi.md#find_resources) | **GET** /resources | 
[**update_resource_by_id_or_uri**](ResourceApi.md#update_resource_by_id_or_uri) | **PATCH** /resources/{id_or_uri} | 


# **add_resource**
> Resource add_resource(resource)



Creates a new resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourceApi.new

resource = TriglavClientBase::ResourceInput.new # ResourceInput | Resource to add


begin
  result = api_instance.add_resource(resource)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourceApi->add_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**ResourceInput**](ResourceInput.md)| Resource to add | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_resource_by_id_or_uri**
> delete_resource_by_id_or_uri(id_or_uri)



Deletes single resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourceApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of resource to fetch


begin
  api_instance.delete_resource_by_id_or_uri(id_or_uri)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourceApi->delete_resource_by_id_or_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of resource to fetch | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_resource_by_id_or_uri**
> Resource find_resource_by_id_or_uri(id_or_uri)



Returns a single resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourceApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of resource to fetch


begin
  result = api_instance.find_resource_by_id_or_uri(id_or_uri)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourceApi->find_resource_by_id_or_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of resource to fetch | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_resources**
> Array&lt;ResourceEach&gt; find_resources(cluster_id, consumable, notifiable)



Returns all resources from the system

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourceApi.new

cluster_id = 56 # Integer | ID of Cluster

consumable = true # BOOLEAN | Consuamble

notifiable = true # BOOLEAN | Notifiable


begin
  result = api_instance.find_resources(cluster_id, consumable, notifiable)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourceApi->find_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **Integer**| ID of Cluster | 
 **consumable** | **BOOLEAN**| Consuamble | 
 **notifiable** | **BOOLEAN**| Notifiable | 

### Return type

[**Array&lt;ResourceEach&gt;**](ResourceEach.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_resource_by_id_or_uri**
> Resource update_resource_by_id_or_uri(id_or_uri, resource)



Updates a single resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourceApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of resource to fetch

resource = TriglavClientBase::ResourceInput.new # ResourceInput | Resource parameters to update


begin
  result = api_instance.update_resource_by_id_or_uri(id_or_uri, resource)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourceApi->update_resource_by_id_or_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of resource to fetch | 
 **resource** | [**ResourceInput**](ResourceInput.md)| Resource parameters to update | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



