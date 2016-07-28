# TriglavClientBase::ClustersApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cluster**](ClustersApi.md#create_cluster) | **POST** /clusters | 
[**delete_cluster**](ClustersApi.md#delete_cluster) | **DELETE** /clusters/{id_or_name} | 
[**get_cluster**](ClustersApi.md#get_cluster) | **GET** /clusters/{id_or_name} | 
[**list_clusters**](ClustersApi.md#list_clusters) | **GET** /clusters | 
[**update_cluster**](ClustersApi.md#update_cluster) | **PATCH** /clusters/{id_or_name} | 


# **create_cluster**
> Cluster create_cluster(cluster)



Creates a new cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'
# setup authorization
TriglavClientBase.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClientBase::ClustersApi.new

cluster = TriglavClientBase::ClusterInput.new # ClusterInput | Cluster to add


begin
  result = api_instance.create_cluster(cluster)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->create_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | [**ClusterInput**](ClusterInput.md)| Cluster to add | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_cluster**
> delete_cluster(id_or_name)



Deletes single cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'
# setup authorization
TriglavClientBase.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClientBase::ClustersApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch


begin
  api_instance.delete_cluster(id_or_name)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->delete_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cluster**
> Cluster get_cluster(id_or_name)



Returns a single cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'
# setup authorization
TriglavClientBase.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClientBase::ClustersApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch


begin
  result = api_instance.get_cluster(id_or_name)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->get_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_clusters**
> Array&lt;ClusterEach&gt; list_clusters



Returns all clusters from the system

### Example
```ruby
# load the gem
require 'triglav_client_base'
# setup authorization
TriglavClientBase.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClientBase::ClustersApi.new

begin
  result = api_instance.list_clusters
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->list_clusters: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ClusterEach&gt;**](ClusterEach.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_cluster**
> Cluster update_cluster(id_or_name, cluster)



Updates a single cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'
# setup authorization
TriglavClientBase.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClientBase::ClustersApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch

cluster = TriglavClientBase::ClusterInput.new # ClusterInput | Cluster parameters to update


begin
  result = api_instance.update_cluster(id_or_name, cluster)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClustersApi->update_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 
 **cluster** | [**ClusterInput**](ClusterInput.md)| Cluster parameters to update | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



