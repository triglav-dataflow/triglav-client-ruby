# TriglavClientBase::JobsApi

All URIs are relative to *http://localhost/apidocs*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_jobs_destroy**](JobsApi.md#api_v1_jobs_destroy) | **DELETE** /api/v1/jobs/{id_or_uri}.json | Deletes an existing Job item
[**api_v1_jobs_show**](JobsApi.md#api_v1_jobs_show) | **GET** /api/v1/jobs/{id_or_uri}.json | Fetches a single Job
[**api_v1_jobs_update**](JobsApi.md#api_v1_jobs_update) | **PUT** /api/v1/jobs/{id_or_uri}.json | Creates or Updates a Job


# **api_v1_jobs_destroy**
> api_v1_jobs_destroy(id_or_uri)

Deletes an existing Job item

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::JobsApi.new

id_or_uri = "id_or_uri_example" # String | Resource Id or URI


begin
  #Deletes an existing Job item
  api_instance.api_v1_jobs_destroy(id_or_uri)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobsApi->api_v1_jobs_destroy: #{e}"
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



# **api_v1_jobs_show**
> Resource api_v1_jobs_show(id_or_uri)

Fetches a single Job

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::JobsApi.new

id_or_uri = "id_or_uri_example" # String | Resource Id or URI


begin
  #Fetches a single Job
  result = api_instance.api_v1_jobs_show(id_or_uri)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobsApi->api_v1_jobs_show: #{e}"
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



# **api_v1_jobs_update**
> api_v1_jobs_update(uri, opts)

Creates or Updates a Job

Input and output resources are also created if they do not exist. Use Resource API to update.

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::JobsApi.new

uri = "uri_example" # String | Job URI

opts = { 
  input_resources: nil, # Array<Object> | Input Resources
  output_resources: nil # Array<Object> | Output Resources
}

begin
  #Creates or Updates a Job
  api_instance.api_v1_jobs_update(uri, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobsApi->api_v1_jobs_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Job URI | 
 **input_resources** | [**Array&lt;Object&gt;**](Object.md)| Input Resources | [optional] 
 **output_resources** | [**Array&lt;Object&gt;**](Object.md)| Output Resources | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



