# TriglavClient::MessagesApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_messages**](MessagesApi.md#fetch_messages) | **POST** /fetch_messages | 
[**get_last_message_id**](MessagesApi.md#get_last_message_id) | **GET** /messages/last_id | 
[**list_messages**](MessagesApi.md#list_messages) | **GET** /messages | 
[**send_messages**](MessagesApi.md#send_messages) | **POST** /messages | 


# **fetch_messages**
> Array&lt;MessageEachResponse&gt; fetch_messages(fetch_request)



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

fetch_request = TriglavClient::MessageFetchRequest.new # MessageFetchRequest | Fetch Request


begin
  result = api_instance.fetch_messages(fetch_request)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->fetch_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fetch_request** | [**MessageFetchRequest**](MessageFetchRequest.md)| Fetch Request | 

### Return type

[**Array&lt;MessageEachResponse&gt;**](MessageEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_last_message_id**
> LastMessageIdResponse get_last_message_id



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

api_instance = TriglavClient::MessagesApi.new

begin
  result = api_instance.get_last_message_id
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->get_last_message_id: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LastMessageIdResponse**](LastMessageIdResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_messages**
> Array&lt;MessageEachResponse&gt; list_messages(offset, opts)



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

opts = { 
  limit: 56, # Integer | Number of limits
  resource_uris: "resource_uris_example" # String | URIs of Resource
}

begin
  result = api_instance.list_messages(offset, opts)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->list_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Offset (Greater than or equal to) ID for Messages to list from | 
 **limit** | **Integer**| Number of limits | [optional] 
 **resource_uris** | **String**| URIs of Resource | [optional] 

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



