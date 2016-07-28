# TriglavClientBase::AuthApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_token**](AuthApi.md#create_token) | **POST** /auth/token | 
[**delete_token**](AuthApi.md#delete_token) | **DELETE** /auth/token | 
[**me**](AuthApi.md#me) | **GET** /auth/me | 


# **create_token**
> AccessToken create_token(auth)



Creates a new token

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::AuthApi.new

auth = TriglavClientBase::AuthInput.new # AuthInput | 


begin
  result = api_instance.create_token(auth)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling AuthApi->create_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth** | [**AuthInput**](AuthInput.md)|  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_token**
> delete_token(authorization)



Deletes (Expires) a token

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::AuthApi.new

authorization = "authorization_example" # String | token #{access_token}


begin
  api_instance.delete_token(authorization)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling AuthApi->delete_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| token #{access_token} | 

### Return type

nil (empty response body)

### Authorization

No authorization required

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



