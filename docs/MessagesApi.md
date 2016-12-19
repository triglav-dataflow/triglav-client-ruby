# TriglavClient::MessagesApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_messages**](MessagesApi.md#fetch_messages) | **POST** /fetch_messages | 
[**list_messages**](MessagesApi.md#list_messages) | **GET** /messages | 
[**send_messages**](MessagesApi.md#send_messages) | **POST** /messages | 


# **fetch_messages**
> Array&lt;MessageEachResponse&gt; fetch_messages(offset, resource_uris, opts)



Fetch messages with HTTP POST method

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

api_instance = TriglavClient::MessagesApi.new

offset = 56 # Integer | Offset (Greater than or equal to) ID for Messages to fetch from

resource_uris = "resource_uris_example" # String | URIs of Resource

opts = { 
  limit: 56 # Integer | Number of limits
}

begin
  result = api_instance.fetch_messages(offset, resource_uris, opts)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->fetch_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Offset (Greater than or equal to) ID for Messages to fetch from | 
 **resource_uris** | **String**| URIs of Resource | 
 **limit** | **Integer**| Number of limits | [optional] 

### Return type

[**Array&lt;MessageEachResponse&gt;**](MessageEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_messages**
> Array&lt;MessageEachResponse&gt; list_messages(offset, resource_uris, opts)



List messages with HTTP GET method

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

api_instance = TriglavClient::MessagesApi.new

offset = 56 # Integer | Offset (Greater than or equal to) ID for Messages to list from

resource_uris = "resource_uris_example" # String | URIs of Resource

opts = { 
  limit: 56 # Integer | Number of limits
}

begin
  result = api_instance.list_messages(offset, resource_uris, opts)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->list_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Offset (Greater than or equal to) ID for Messages to list from | 
 **resource_uris** | **String**| URIs of Resource | 
 **limit** | **Integer**| Number of limits | [optional] 

### Return type

[**Array&lt;MessageEachResponse&gt;**](MessageEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_messages**
> BulkinsertResponse send_messages(messages)



Enqueues new messages

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

api_instance = TriglavClient::MessagesApi.new

messages = [TriglavClient::MessageRequest.new] # Array<MessageRequest> | Messages to enqueue


begin
  result = api_instance.send_messages(messages)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->send_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messages** | [**Array&lt;MessageRequest&gt;**](MessageRequest.md)| Messages to enqueue | 

### Return type

[**BulkinsertResponse**](BulkinsertResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



