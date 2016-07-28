# TriglavClientBase::AuthApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_token**](AuthApi.md#create_token) | **POST** /auth/token | 
[**delete_token**](AuthApi.md#delete_token) | **DELETE** /auth/token | 
[**me**](AuthApi.md#me) | **GET** /auth/me | 


# **create_token**
> AccessTokenStruct create_token(credential)



Creates a new token

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::AuthApi.new

credential = TriglavClientBase::Credential.new # Credential | 


begin
  result = api_instance.create_token(credential)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling AuthApi->create_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credential** | [**Credential**](Credential.md)|  | 

### Return type

[**AccessTokenStruct**](AccessTokenStruct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_token**
> delete_token



Deletes (Expires) a token of header

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

api_instance = TriglavClientBase::AuthApi.new

begin
  api_instance.delete_token
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling AuthApi->delete_token: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **me**
> User me



Returns a user property of the access_token

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

api_instance = TriglavClientBase::AuthApi.new

begin
  result = api_instance.me
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling AuthApi->me: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



