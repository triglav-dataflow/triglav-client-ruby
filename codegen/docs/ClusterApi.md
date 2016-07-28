# TriglavClientBase::ClusterApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_cluster**](ClusterApi.md#add_cluster) | **POST** /clusters | 
[**delete_cluster_by_id_or_name**](ClusterApi.md#delete_cluster_by_id_or_name) | **DELETE** /clusters/{id_or_name} | 
[**find_cluster_by_id_or_name**](ClusterApi.md#find_cluster_by_id_or_name) | **GET** /clusters/{id_or_name} | 
[**find_clusters**](ClusterApi.md#find_clusters) | **GET** /clusters | 
[**update_cluster_by_id_or_name**](ClusterApi.md#update_cluster_by_id_or_name) | **PATCH** /clusters/{id_or_name} | 


# **add_cluster**
> Cluster add_cluster(cluster)



Creates a new cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClusterApi.new

cluster = TriglavClientBase::ClusterInput.new # ClusterInput | Cluster to add


begin
  result = api_instance.add_cluster(cluster)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClusterApi->add_cluster: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster** | [**ClusterInput**](ClusterInput.md)| Cluster to add | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_cluster_by_id_or_name**
> delete_cluster_by_id_or_name(id_or_name)



Deletes single cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClusterApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch


begin
  api_instance.delete_cluster_by_id_or_name(id_or_name)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClusterApi->delete_cluster_by_id_or_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_cluster_by_id_or_name**
> Cluster find_cluster_by_id_or_name(id_or_name)



Returns a single cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClusterApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch


begin
  result = api_instance.find_cluster_by_id_or_name(id_or_name)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClusterApi->find_cluster_by_id_or_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_name** | **String**| ID or Name of cluster to fetch | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_clusters**
> Array&lt;ClusterEach&gt; find_clusters



Returns all clusters from the system

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClusterApi.new

begin
  result = api_instance.find_clusters
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClusterApi->find_clusters: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ClusterEach&gt;**](ClusterEach.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_cluster_by_id_or_name**
> Cluster update_cluster_by_id_or_name(id_or_name, cluster)



Updates a single cluster

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::ClusterApi.new

id_or_name = "id_or_name_example" # String | ID or Name of cluster to fetch

cluster = TriglavClientBase::ClusterInput.new # ClusterInput | Cluster parameters to update


begin
  result = api_instance.update_cluster_by_id_or_name(id_or_name, cluster)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling ClusterApi->update_cluster_by_id_or_name: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



