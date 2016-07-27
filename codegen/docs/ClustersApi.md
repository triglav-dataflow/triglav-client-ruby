# TriglavClientBase::ClustersApi

All URIs are relative to *http://localhost/apidocs*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_clusters_create**](ClustersApi.md#api_v1_clusters_create) | **POST** /api/v1/clusters.json | Creates a new Cluster
[**api_v1_clusters_destroy**](ClustersApi.md#api_v1_clusters_destroy) | **DELETE** /api/v1/clusters/{id}.json | Deletes an existing Cluster item
[**api_v1_clusters_index**](ClustersApi.md#api_v1_clusters_index) | **GET** /api/v1/clusters.json | Fetches all Cluster items
[**api_v1_clusters_show**](ClustersApi.md#api_v1_clusters_show) | **GET** /api/v1/clusters/{id}.json | Fetches a single Cluster item
[**api_v1_clusters_update**](ClustersApi.md#api_v1_clusters_update) | **PATCH** /api/v1/clusters/{id}.json | Updates an existing Cluster


# **api_v1_clusters_create**
> api_v1_clusters_create(name, opts)

Creates a new Cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClustersApi.new

name = "name_example" # String | Name

opts = { 
  description: "description_example" # String | Description
}

begin
  #Creates a new Cluster
  api_instance.api_v1_clusters_create(name, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->api_v1_clusters_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | 
 **description** | **String**| Description | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_clusters_destroy**
> api_v1_clusters_destroy(id)

Deletes an existing Cluster item

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClustersApi.new

id = 56 # Integer | Cluster Id


begin
  #Deletes an existing Cluster item
  api_instance.api_v1_clusters_destroy(id)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->api_v1_clusters_destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Cluster Id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_clusters_index**
> api_v1_clusters_index

Fetches all Cluster items

This lists all clusters

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClustersApi.new

begin
  #Fetches all Cluster items
  api_instance.api_v1_clusters_index
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->api_v1_clusters_index: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_clusters_show**
> User api_v1_clusters_show(id)

Fetches a single Cluster item

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClustersApi.new

id = 56 # Integer | Cluster Id


begin
  #Fetches a single Cluster item
  result = api_instance.api_v1_clusters_show(id)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->api_v1_clusters_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Cluster Id | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_clusters_update**
> api_v1_clusters_update(id, opts)

Updates an existing Cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClustersApi.new

id = 56 # Integer | Cluster Id

opts = { 
  name: "name_example", # String | Name
  description: "description_example" # String | Description
}

begin
  #Updates an existing Cluster
  api_instance.api_v1_clusters_update(id, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->api_v1_clusters_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Cluster Id | 
 **name** | **String**| Name | [optional] 
 **description** | **String**| Description | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



