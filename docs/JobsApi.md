# TriglavClient::JobsApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_job**](JobsApi.md#create_or_update_job) | **PATCH** /jobs | 
[**delete_job**](JobsApi.md#delete_job) | **DELETE** /jobs/{id_or_uri} | 
[**get_job**](JobsApi.md#get_job) | **GET** /jobs/{id_or_uri} | 
[**list_jobs**](JobsApi.md#list_jobs) | **GET** /jobs | 


# **create_or_update_job**
> Job create_or_update_job(job)



Creates or Updates a single job

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

api_instance = TriglavClient::JobsApi.new

job = TriglavClient::JobInput.new # JobInput | Job parameters


begin
  result = api_instance.create_or_update_job(job)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling JobsApi->create_or_update_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**JobInput**](JobInput.md)| Job parameters | 

### Return type

[**Job**](Job.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_job**
> delete_job(id_or_uri)



Deletes single job

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

api_instance = TriglavClient::JobsApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of job to fetch


begin
  api_instance.delete_job(id_or_uri)
rescue TriglavClient::ApiError => e
  puts "Exception when calling JobsApi->delete_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of job to fetch | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_job**
> Job get_job(id_or_uri)



Returns a single job

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

api_instance = TriglavClient::JobsApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of job to fetch


begin
  result = api_instance.get_job(id_or_uri)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling JobsApi->get_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of job to fetch | 

### Return type

[**Job**](Job.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_jobs**
> Array&lt;JobEach&gt; list_jobs



Returns all jobs

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

api_instance = TriglavClient::JobsApi.new

begin
  result = api_instance.list_jobs
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling JobsApi->list_jobs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;JobEach&gt;**](JobEach.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



