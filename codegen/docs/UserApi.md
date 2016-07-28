# TriglavClientBase::UserApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user**](UserApi.md#add_user) | **POST** /users | 
[**delete_user_by_id**](UserApi.md#delete_user_by_id) | **DELETE** /users/{id} | 
[**find_user_by_id**](UserApi.md#find_user_by_id) | **GET** /users/{id} | 
[**find_users**](UserApi.md#find_users) | **GET** /users | 
[**update_user_by_id**](UserApi.md#update_user_by_id) | **PATCH** /users/{id} | 


# **add_user**
> User add_user(user)



Creates a new user in the store

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UserApi.new

user = TriglavClientBase::UserInput.new # UserInput | User to add to the store


begin
  result = api_instance.add_user(user)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UserApi->add_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**UserInput**](UserInput.md)| User to add to the store | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user_by_id**
> delete_user_by_id(id)



Deletes single user

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UserApi.new

id = 789 # Integer | ID of user to fetch


begin
  api_instance.delete_user_by_id(id)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UserApi->delete_user_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to fetch | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_user_by_id**
> User find_user_by_id(id)



Returns a single user

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UserApi.new

id = 789 # Integer | ID of user to fetch


begin
  result = api_instance.find_user_by_id(id)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UserApi->find_user_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to fetch | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_users**
> Array&lt;UserEach&gt; find_users



Returns all users from the system that the user has access to

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UserApi.new

begin
  result = api_instance.find_users
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UserApi->find_users: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserEach&gt;**](UserEach.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_by_id**
> User update_user_by_id(id, user)



Updates a single user

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UserApi.new

id = 789 # Integer | ID of user to fetch

user = TriglavClientBase::UserInput.new # UserInput | User parameters to update


begin
  result = api_instance.update_user_by_id(id, user)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UserApi->update_user_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to fetch | 
 **user** | [**UserInput**](UserInput.md)| User parameters to update | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



