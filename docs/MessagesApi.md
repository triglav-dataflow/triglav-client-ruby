# TriglavClient::MessagesApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_messages**](MessagesApi.md#fetch_messages) | **GET** /messages | 
[**send_message**](MessagesApi.md#send_message) | **POST** /messages | 


# **fetch_messages**
> Array&lt;MessageEachResponse&gt; fetch_messages(offset, resource_uri)



Fetches messages

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

resource_uri = "resource_uri_example" # String | URI of Resource


begin
  result = api_instance.fetch_messages(offset, resource_uri)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->fetch_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**| Offset (Greater than or equal to) ID for Messages to fetch from | 
 **resource_uri** | **String**| URI of Resource | 

### Return type

[**Array&lt;MessageEachResponse&gt;**](MessageEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_message**
> MessageResponse send_message(resource_uri, resource_unit, resource_time, resource_timezone, message)



Enqueues a new message

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

resource_uri = "resource_uri_example" # String | URI of Resource

resource_unit = "resource_unit_example" # String | Unit of Resource

resource_time = 56 # Integer | Resource Time

resource_timezone = "resource_timezone_example" # String | Timezone of Resource Time

message = TriglavClient::MessageRequest.new # MessageRequest | Message to add


begin
  result = api_instance.send_message(resource_uri, resource_unit, resource_time, resource_timezone, message)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling MessagesApi->send_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| URI of Resource | 
 **resource_unit** | **String**| Unit of Resource | 
 **resource_time** | **Integer**| Resource Time | 
 **resource_timezone** | **String**| Timezone of Resource Time | 
 **message** | [**MessageRequest**](MessageRequest.md)| Message to add | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



