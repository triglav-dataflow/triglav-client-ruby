# TriglavClientBase::MessagesApi

All URIs are relative to *http://localhost/apidocs*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_messages_create**](MessagesApi.md#api_v1_messages_create) | **POST** /api/v1/messages.json | Enqueues a new Message
[**api_v1_messages_index**](MessagesApi.md#api_v1_messages_index) | **GET** /api/v1/messages.json | Fetches messages


# **api_v1_messages_create**
> api_v1_messages_create(resource_uri, opts)

Enqueues a new Message

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::MessagesApi.new

resource_uri = "resource_uri_example" # String | Resource URI (or Topic)

opts = { 
  datetime: "datetime_example", # String | Date
  params: "params_example", # String | Conditional params
  payload: "payload_example" # String | Message payload
}

begin
  #Enqueues a new Message
  api_instance.api_v1_messages_create(resource_uri, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling MessagesApi->api_v1_messages_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| Resource URI (or Topic) | 
 **datetime** | **String**| Date | [optional] 
 **params** | **String**| Conditional params | [optional] 
 **payload** | **String**| Message payload | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_messages_index**
> api_v1_messages_index(resource_uri, offset, opts)

Fetches messages



### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::MessagesApi.new

resource_uri = "resource_uri_example" # String | Resource URI (or Topic)

offset = 56 # Integer | Offset

opts = { 
  datetime: "datetime_example" # String | Date
}

begin
  #Fetches messages
  api_instance.api_v1_messages_index(resource_uri, offset, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling MessagesApi->api_v1_messages_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_uri** | **String**| Resource URI (or Topic) | 
 **offset** | **Integer**| Offset | 
 **datetime** | **String**| Date | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



