# triglav_client

TriglavClient - the Ruby gem for the Triglav API

Triglav API Reference

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build date: 2017-04-19T18:47:18.255+09:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build triglav_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./triglav_client-1.0.0.gem
```
(for development, run `gem install --dev ./triglav_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'triglav_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'triglav_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'triglav_client'

api_instance = TriglavClient::AuthApi.new

credential = TriglavClient::Credential.new # Credential | 


begin
  result = api_instance.create_token(credential)
  p result
rescue TriglavClient::ApiError => e
  puts "Exception when calling AuthApi->create_token: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TriglavClient::AuthApi* | [**create_token**](docs/AuthApi.md#create_token) | **POST** /auth/token | 
*TriglavClient::AuthApi* | [**delete_token**](docs/AuthApi.md#delete_token) | **DELETE** /auth/token | 
*TriglavClient::AuthApi* | [**me**](docs/AuthApi.md#me) | **GET** /auth/me | 
*TriglavClient::JobMessagesApi* | [**fetch_job_messages**](docs/JobMessagesApi.md#fetch_job_messages) | **GET** /job_messages | 
*TriglavClient::JobMessagesApi* | [**get_last_job_message_id**](docs/JobMessagesApi.md#get_last_job_message_id) | **GET** /job_messages/last_id | 
*TriglavClient::JobsApi* | [**create_or_update_job**](docs/JobsApi.md#create_or_update_job) | **PATCH** /jobs | 
*TriglavClient::JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /jobs/{id_or_uri} | 
*TriglavClient::JobsApi* | [**get_job**](docs/JobsApi.md#get_job) | **GET** /jobs/{id_or_uri} | 
*TriglavClient::JobsApi* | [**list_jobs**](docs/JobsApi.md#list_jobs) | **GET** /jobs | 
*TriglavClient::MessagesApi* | [**fetch_messages**](docs/MessagesApi.md#fetch_messages) | **GET** /messages | 
*TriglavClient::MessagesApi* | [**get_last_message_id**](docs/MessagesApi.md#get_last_message_id) | **GET** /messages/last_id | 
*TriglavClient::MessagesApi* | [**send_messages**](docs/MessagesApi.md#send_messages) | **POST** /messages | 
*TriglavClient::ResourcesApi* | [**create_resource**](docs/ResourcesApi.md#create_resource) | **POST** /resources | 
*TriglavClient::ResourcesApi* | [**delete_resource**](docs/ResourcesApi.md#delete_resource) | **DELETE** /resources/{id_or_uri} | 
*TriglavClient::ResourcesApi* | [**get_resource**](docs/ResourcesApi.md#get_resource) | **GET** /resources/{id_or_uri} | 
*TriglavClient::ResourcesApi* | [**list_aggregated_resources**](docs/ResourcesApi.md#list_aggregated_resources) | **GET** /aggregated_resources | 
*TriglavClient::ResourcesApi* | [**list_resources**](docs/ResourcesApi.md#list_resources) | **GET** /resources | 
*TriglavClient::ResourcesApi* | [**update_resource**](docs/ResourcesApi.md#update_resource) | **PATCH** /resources/{id_or_uri} | 
*TriglavClient::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /users | 
*TriglavClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{id} | 
*TriglavClient::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{id} | 
*TriglavClient::UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /users | 
*TriglavClient::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PATCH** /users/{id} | 


## Documentation for Models

 - [TriglavClient::AggregatedResourceEachResponse](docs/AggregatedResourceEachResponse.md)
 - [TriglavClient::BulkinsertResponse](docs/BulkinsertResponse.md)
 - [TriglavClient::Credential](docs/Credential.md)
 - [TriglavClient::ErrorModel](docs/ErrorModel.md)
 - [TriglavClient::JobEachResponse](docs/JobEachResponse.md)
 - [TriglavClient::JobMessageEachResponse](docs/JobMessageEachResponse.md)
 - [TriglavClient::JobRequest](docs/JobRequest.md)
 - [TriglavClient::JobResponse](docs/JobResponse.md)
 - [TriglavClient::LastJobMessageIdResponse](docs/LastJobMessageIdResponse.md)
 - [TriglavClient::LastMessageIdResponse](docs/LastMessageIdResponse.md)
 - [TriglavClient::MessageEachResponse](docs/MessageEachResponse.md)
 - [TriglavClient::MessageFetchRequest](docs/MessageFetchRequest.md)
 - [TriglavClient::MessageRequest](docs/MessageRequest.md)
 - [TriglavClient::MessageResponse](docs/MessageResponse.md)
 - [TriglavClient::ResourceEachResponse](docs/ResourceEachResponse.md)
 - [TriglavClient::ResourceRequest](docs/ResourceRequest.md)
 - [TriglavClient::ResourceResponse](docs/ResourceResponse.md)
 - [TriglavClient::TokenResponse](docs/TokenResponse.md)
 - [TriglavClient::UserEachResponse](docs/UserEachResponse.md)
 - [TriglavClient::UserRequest](docs/UserRequest.md)
 - [TriglavClient::UserResponse](docs/UserResponse.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

