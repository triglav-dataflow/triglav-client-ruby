# TriglavClientBase::JobsApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_job**](JobsApi.md#create_or_update_job) | **PATCH** /jobs | 
[**delete_job_by_id_or_uri**](JobsApi.md#delete_job_by_id_or_uri) | **DELETE** /jobs/{id_or_uri} | 
[**find_job_by_id_or_uri**](JobsApi.md#find_job_by_id_or_uri) | **GET** /jobs/{id_or_uri} | 
[**find_jobs**](JobsApi.md#find_jobs) | **GET** /jobs | 


# **create_or_update_job**
> Job create_or_update_job(job)



Creates or Updates a single job

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

api_instance = TriglavClientBase::JobsApi.new

job = TriglavClientBase::JobInput.new # JobInput | Job parameters


begin
  result = api_instance.create_or_update_job(job)
  p result
rescue TriglavClientBase::ApiError => e
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



# **delete_job_by_id_or_uri**
> delete_job_by_id_or_uri(id_or_uri)



Deletes single job

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

api_instance = TriglavClientBase::JobsApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of job to fetch


begin
  api_instance.delete_job_by_id_or_uri(id_or_uri)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobsApi->delete_job_by_id_or_uri: #{e}"
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



# **find_job_by_id_or_uri**
> Job find_job_by_id_or_uri(id_or_uri)



Returns a single job

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

api_instance = TriglavClientBase::JobsApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of job to fetch


begin
  result = api_instance.find_job_by_id_or_uri(id_or_uri)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobsApi->find_job_by_id_or_uri: #{e}"
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



# **find_jobs**
> Array&lt;JobEach&gt; find_jobs



Returns all jobs

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

api_instance = TriglavClientBase::JobsApi.new

begin
  result = api_instance.find_jobs
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobsApi->find_jobs: #{e}"
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



