# TriglavClientBase::UsersApi

All URIs are relative to *http://localhost/apidocs*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v1_users_create**](UsersApi.md#api_v1_users_create) | **POST** /api/v1/users.json | Creates a new User
[**api_v1_users_destroy**](UsersApi.md#api_v1_users_destroy) | **DELETE** /api/v1/users/{id}.json | Deletes an existing User item
[**api_v1_users_index**](UsersApi.md#api_v1_users_index) | **GET** /api/v1/users.json | Fetches all User items
[**api_v1_users_show**](UsersApi.md#api_v1_users_show) | **GET** /api/v1/users/{id}.json | Fetches a single User item
[**api_v1_users_update**](UsersApi.md#api_v1_users_update) | **PATCH** /api/v1/users/{id}.json | Updates an existing User


# **api_v1_users_create**
> api_v1_users_create(name, authenticator, groups, password, opts)

Creates a new User

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UsersApi.new

name = "name_example" # String | Name

authenticator = "authenticator_example" # String | local or ldap.dena.local

groups = ["groups_example"] # Array<String> | Groups

password = "password_example" # String | Password

opts = { 
  description: "description_example", # String | Description
  email: "email_example" # String | Email
}

begin
  #Creates a new User
  api_instance.api_v1_users_create(name, authenticator, groups, password, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UsersApi->api_v1_users_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | 
 **authenticator** | **String**| local or ldap.dena.local | 
 **groups** | [**Array&lt;String&gt;**](String.md)| Groups | 
 **password** | **String**| Password | 
 **description** | **String**| Description | [optional] 
 **email** | **String**| Email | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_users_destroy**
> api_v1_users_destroy(id)

Deletes an existing User item

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UsersApi.new

id = 56 # Integer | User Id


begin
  #Deletes an existing User item
  api_instance.api_v1_users_destroy(id)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UsersApi->api_v1_users_destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User Id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_users_index**
> api_v1_users_index

Fetches all User items

This lists all the active users

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UsersApi.new

begin
  #Fetches all User items
  api_instance.api_v1_users_index
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UsersApi->api_v1_users_index: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_users_show**
> User api_v1_users_show(id)

Fetches a single User item

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UsersApi.new

id = 56 # Integer | User Id


begin
  #Fetches a single User item
  result = api_instance.api_v1_users_show(id)
  p result
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UsersApi->api_v1_users_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User Id | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **api_v1_users_update**
> api_v1_users_update(id, opts)

Updates an existing User

### Example
```ruby
# load the gem
require 'triglav_client_base'

api_instance = TriglavClientBase::UsersApi.new

id = 56 # Integer | User Id

opts = { 
  name: "name_example", # String | Name
  description: "description_example", # String | Description
  authenticator: "authenticator_example", # String | Local or ldap
  email: "email_example", # String | Email
  groups: ["groups_example"], # Array<String> | Groups
  password: "password_example" # String | Password for local authentication
}

begin
  #Updates an existing User
  api_instance.api_v1_users_update(id, opts)
rescue TriglavClientBase::ApiError => e
  puts "Exception when calling UsersApi->api_v1_users_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User Id | 
 **name** | **String**| Name | [optional] 
 **description** | **String**| Description | [optional] 
 **authenticator** | **String**| Local or ldap | [optional] 
 **email** | **String**| Email | [optional] 
 **groups** | [**Array&lt;String&gt;**](String.md)| Groups | [optional] 
 **password** | **String**| Password for local authentication | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



