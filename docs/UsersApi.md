# TriglavClient::UsersApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /users | 
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{id} | 
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | 
[**list_users**](UsersApi.md#list_users) | **GET** /users | 
[**update_user**](UsersApi.md#update_user) | **PATCH** /users/{id} | 


# **create_user**
> UserResponse create_user(user)



Creates a new user in the store

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

api_instance = TriglavClient::UsersApi.new

user = TriglavClient::UserRequest.new # UserRequest | User to add to the store


begin
  result = api_instance.create_user(user)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**UserRequest**](UserRequest.md)| User to add to the store | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user**
> delete_user(id)



Deletes single user

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

api_instance = TriglavClient::UsersApi.new

id = 789 # Integer | ID of user to fetch


begin
  api_instance.delete_user(id)
rescue TriglavClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to fetch | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user**
> UserResponse get_user(id)



Returns a single user

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

api_instance = TriglavClient::UsersApi.new

id = 789 # Integer | ID of user to fetch


begin
  result = api_instance.get_user(id)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to fetch | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_users**
> Array&lt;UserEachResponse&gt; list_users



Returns all users from the system that the user has access to

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

api_instance = TriglavClient::UsersApi.new

begin
  result = api_instance.list_users
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserEachResponse&gt;**](UserEachResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user**
> UserResponse update_user(id, user)



Updates a single user

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

api_instance = TriglavClient::UsersApi.new

id = 789 # Integer | ID of user to fetch

user = TriglavClient::UserRequest.new # UserRequest | User parameters to update


begin
  result = api_instance.update_user(id, user)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to fetch | 
 **user** | [**UserRequest**](UserRequest.md)| User parameters to update | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



