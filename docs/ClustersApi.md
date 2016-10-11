# TriglavClient::ClustersApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cluster**](ClustersApi.md#create_cluster) | **POST** /clusters | 
[**delete_cluster**](ClustersApi.md#delete_cluster) | **DELETE** /clusters/{id_or_name} | 
[**get_cluster**](ClustersApi.md#get_cluster) | **GET** /clusters/{id_or_name} | 
[**list_clusters**](ClustersApi.md#list_clusters) | **GET** /clusters | 
[**update_cluster**](ClustersApi.md#update_cluster) | **PATCH** /clusters/{id_or_name} | 


# **create_cluster**
> ClusterResponse create_cluster(cluster)



Creates a new cluster

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

api_instance = TriglavClient::ClustersApi.new

cluster = TriglavClient::ClusterRequest.new # ClusterRequest | Cluster to add


begin
  result = api_instance.create_cluster(cluster)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ClustersApi->create_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | [**ClusterRequest**](ClusterRequest.md)| Cluster to add | 

### Return type

[**ClusterResponse**](ClusterResponse.md)

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
require 'triglav_client'
# setup authorization
TriglavClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TriglavClient::ClustersApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch


begin
  api_instance.delete_cluster(id_or_name)
rescue TriglavClient::ApiError => e
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
> ClusterResponse get_cluster(id_or_name)



Returns a single cluster

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

api_instance = TriglavClient::ClustersApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch


begin
  result = api_instance.get_cluster(id_or_name)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ClustersApi->get_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_clusters**
> Array&lt;ClusterEachResponse&gt; list_clusters



Returns all clusters from the system

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

api_instance = TriglavClient::ClustersApi.new

begin
  result = api_instance.list_clusters
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ClustersApi->list_clusters: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ClusterEachResponse&gt;**](ClusterEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_cluster**
> ClusterResponse update_cluster(id_or_name, cluster)



Updates a single cluster

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

api_instance = TriglavClient::ClustersApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch

cluster = TriglavClient::ClusterRequest.new # ClusterRequest | Cluster parameters to update


begin
  result = api_instance.update_cluster(id_or_name, cluster)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling ClustersApi->update_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 
 **cluster** | [**ClusterRequest**](ClusterRequest.md)| Cluster parameters to update | 

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



