# TriglavClientBase::ResourcesApi

All URIs are relative to *http://localhost/apidocs*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_resources_create**](ResourcesApi.md#api_v1_resources_create) | **POST** /api/v1/resources.json | Creates a Resource
[**api_v1_resources_destroy**](ResourcesApi.md#api_v1_resources_destroy) | **DELETE** /api/v1/resources/{id_or_uri}.json | Deletes an existing Resource
[**api_v1_resources_index**](ResourcesApi.md#api_v1_resources_index) | **GET** /api/v1/resources.json | Fetches resources
[**api_v1_resources_show**](ResourcesApi.md#api_v1_resources_show) | **GET** /api/v1/resources/{id_or_uri}.json | Fetches a single Resource
[**api_v1_resources_update**](ResourcesApi.md#api_v1_resources_update) | **PUT** /api/v1/resources/{id_or_uri}.json | Updates a Resource


# **api_v1_resources_create**
> api_v1_resources_create(uri, opts)

Creates a Resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourcesApi.new

uri = "uri_example" # String | Resource URI

opts = { 
  description: "description_example", # String | Description
  cluster_id: 56, # Integer | Cluster Id
  consumable: true, # BOOLEAN | Consumable or not
  notifiable: true # BOOLEAN | Notifiable or not
}

begin
  #Creates a Resource
  api_instance.api_v1_resources_create(uri, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourcesApi->api_v1_resources_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Resource URI | 
 **description** | **String**| Description | [optional] 
 **cluster_id** | **Integer**| Cluster Id | [optional] 
 **consumable** | **BOOLEAN**| Consumable or not | [optional] 
 **notifiable** | **BOOLEAN**| Notifiable or not | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_resources_destroy**
> api_v1_resources_destroy(id_or_uri)

Deletes an existing Resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourcesApi.new

id_or_uri = "id_or_uri_example" # String | Resource Id or URI


begin
  #Deletes an existing Resource
  api_instance.api_v1_resources_destroy(id_or_uri)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourcesApi->api_v1_resources_destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| Resource Id or URI | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_resources_index**
> api_v1_resources_index(cluster_id, consumable, notifiable)

Fetches resources

Query and fetch resources

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourcesApi.new

cluster_id = "cluster_id_example" # String | Cluster Id

consumable = true # BOOLEAN | Consumable or not

notifiable = true # BOOLEAN | Notifiable or not


begin
  #Fetches resources
  api_instance.api_v1_resources_index(cluster_id, consumable, notifiable)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourcesApi->api_v1_resources_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **String**| Cluster Id | 
 **consumable** | **BOOLEAN**| Consumable or not | 
 **notifiable** | **BOOLEAN**| Notifiable or not | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_resources_show**
> Resource api_v1_resources_show(id_or_uri)

Fetches a single Resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourcesApi.new

id_or_uri = "id_or_uri_example" # String | Resource Id or URI


begin
  #Fetches a single Resource
  result = api_instance.api_v1_resources_show(id_or_uri)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourcesApi->api_v1_resources_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| Resource Id or URI | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_resources_update**
> api_v1_resources_update(id_or_uri, uri, opts)

Updates a Resource

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ResourcesApi.new

id_or_uri = "id_or_uri_example" # String | Resource Id or URI

uri = "uri_example" # String | Resource URI

opts = { 
  description: "description_example", # String | Description
  cluster_id: 56, # Integer | Cluster Id
  consumable: true, # BOOLEAN | Consumable or not
  notifiable: true # BOOLEAN | Notifiable or not
}

begin
  #Updates a Resource
  api_instance.api_v1_resources_update(id_or_uri, uri, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ResourcesApi->api_v1_resources_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| Resource Id or URI | 
 **uri** | **String**| Resource URI | 
 **description** | **String**| Description | [optional] 
 **cluster_id** | **Integer**| Cluster Id | [optional] 
 **consumable** | **BOOLEAN**| Consumable or not | [optional] 
 **notifiable** | **BOOLEAN**| Notifiable or not | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



