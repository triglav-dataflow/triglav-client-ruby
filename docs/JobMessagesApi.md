# TriglavClient::JobMessagesApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_job_messages**](JobMessagesApi.md#fetch_job_messages) | **GET** /job_messages | 
[**get_last_job_message_id**](JobMessagesApi.md#get_last_job_message_id) | **GET** /job_messages/last_id | 


# **fetch_job_messages**
> Array&lt;JobMessageEachResponse&gt; fetch_job_messages(offset, job_id, opts)



Fetch Job messages

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

api_instance = TriglavClient::JobMessagesApi.new

offset = 789 # Integer | Offset (Greater than or equal to) ID for Messages to fetch from

job_id = 789 # Integer | Job ID

opts = { 
  limit: 789 # Integer | Number of limits
}

begin
  result = api_instance.fetch_job_messages(offset, job_id, opts)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling JobMessagesApi->fetch_job_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Offset (Greater than or equal to) ID for Messages to fetch from | 
 **job_id** | **Integer**| Job ID | 
 **limit** | **Integer**| Number of limits | [optional] 

### Return type

[**Array&lt;JobMessageEachResponse&gt;**](JobMessageEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_last_job_message_id**
> LastJobMessageIdResponse get_last_job_message_id



Get the current last message id which would be used as a first offset to fetch messages

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

api_instance = TriglavClient::JobMessagesApi.new

begin
  result = api_instance.get_last_job_message_id
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling JobMessagesApi->get_last_job_message_id: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LastJobMessageIdResponse**](LastJobMessageIdResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



