# TriglavClientBase::JobApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_job**](JobApi.md#create_or_update_job) | **PATCH** /jobs | 
[**delete_job_by_id_or_uri**](JobApi.md#delete_job_by_id_or_uri) | **DELETE** /jobs/{id_or_uri} | 
[**find_job_by_id_or_uri**](JobApi.md#find_job_by_id_or_uri) | **GET** /jobs/{id_or_uri} | 
[**find_jobs**](JobApi.md#find_jobs) | **GET** /jobs | 


# **create_or_update_job**
> Job create_or_update_job(job)



Creates or Updates a single job

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::JobApi.new

job = TriglavClientBase::JobInput.new # JobInput | Job parameters


begin
  result = api_instance.create_or_update_job(job)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobApi->create_or_update_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**JobInput**](JobInput.md)| Job parameters | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

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

api_instance = TriglavClientBase::JobApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of job to fetch


begin
  api_instance.delete_job_by_id_or_uri(id_or_uri)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobApi->delete_job_by_id_or_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of job to fetch | 

### Return type

nil (empty response body)

### Authorization

No authorization required

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

api_instance = TriglavClientBase::JobApi.new

id_or_uri = "id_or_uri_example" # String | ID or URI of job to fetch


begin
  result = api_instance.find_job_by_id_or_uri(id_or_uri)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobApi->find_job_by_id_or_uri: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_or_uri** | **String**| ID or URI of job to fetch | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

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

api_instance = TriglavClientBase::JobApi.new

begin
  result = api_instance.find_jobs
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling JobApi->find_jobs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;JobEach&gt;**](JobEach.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



