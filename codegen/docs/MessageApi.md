# TriglavClientBase::MessageApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_messages**](MessageApi.md#fetch_messages) | **GET** /messages | 
[**send_message**](MessageApi.md#send_message) | **POST** /messages | 


# **fetch_messages**
> Array&lt;MessageEach&gt; fetch_messages(resource_uri, offset, opts)



Fetches messages

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::MessageApi.new

resource_uri = "resource_uri_example" # String | URI of Resource

offset = 56 # Integer | Offset ID for Messages to fetch from

opts = { 
  datetime: "datetime_example" # String | Datetime formatted by ISO 8601
}

begin
  result = api_instance.fetch_messages(resource_uri, offset, opts)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling MessageApi->fetch_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| URI of Resource | 
 **offset** | **Integer**| Offset ID for Messages to fetch from | 
 **datetime** | **String**| Datetime formatted by ISO 8601 | [optional] 

### Return type

[**Array&lt;MessageEach&gt;**](MessageEach.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_message**
> Message send_message(resource_uri, datetime, message)



Enqueues a new message

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::MessageApi.new

resource_uri = "resource_uri_example" # String | URI of Resource

datetime = "datetime_example" # String | Datetime formatted by ISO 8601

message = TriglavClientBase::MessageInput.new # MessageInput | Message to add


begin
  result = api_instance.send_message(resource_uri, datetime, message)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling MessageApi->send_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| URI of Resource | 
 **datetime** | **String**| Datetime formatted by ISO 8601 | 
 **message** | [**MessageInput**](MessageInput.md)| Message to add | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



