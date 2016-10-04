# triglav_client

TriglavClient - the Ruby gem for the Triglav API

Triglav API Reference

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 0.0.1
- Build date: 2016-10-04T14:46:12.176+09:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build triglav_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./triglav_client-0.0.1.gem
```
(for development, run `gem install --dev ./triglav_client-0.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'triglav_client', '~> 0.0.1'

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
*TriglavClient::ClustersApi* | [**create_cluster**](docs/ClustersApi.md#create_cluster) | **POST** /clusters | 
*TriglavClient::ClustersApi* | [**delete_cluster**](docs/ClustersApi.md#delete_cluster) | **DELETE** /clusters/{id_or_name} | 
*TriglavClient::ClustersApi* | [**get_cluster**](docs/ClustersApi.md#get_cluster) | **GET** /clusters/{id_or_name} | 
*TriglavClient::ClustersApi* | [**list_clusters**](docs/ClustersApi.md#list_clusters) | **GET** /clusters | 
*TriglavClient::ClustersApi* | [**update_cluster**](docs/ClustersApi.md#update_cluster) | **PATCH** /clusters/{id_or_name} | 
*TriglavClient::JobsApi* | [**create_or_update_job**](docs/JobsApi.md#create_or_update_job) | **PATCH** /jobs | 
*TriglavClient::JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /jobs/{id_or_uri} | 
*TriglavClient::JobsApi* | [**get_job**](docs/JobsApi.md#get_job) | **GET** /jobs/{id_or_uri} | 
*TriglavClient::JobsApi* | [**list_jobs**](docs/JobsApi.md#list_jobs) | **GET** /jobs | 
*TriglavClient::MessagesApi* | [**fetch_messages**](docs/MessagesApi.md#fetch_messages) | **GET** /messages | 
*TriglavClient::MessagesApi* | [**send_message**](docs/MessagesApi.md#send_message) | **POST** /messages | 
*TriglavClient::ResourcesApi* | [**create_resource**](docs/ResourcesApi.md#create_resource) | **POST** /resources | 
*TriglavClient::ResourcesApi* | [**delete_resource**](docs/ResourcesApi.md#delete_resource) | **DELETE** /resources/{id_or_uri} | 
*TriglavClient::ResourcesApi* | [**get_resource**](docs/ResourcesApi.md#get_resource) | **GET** /resources/{id_or_uri} | 
*TriglavClient::ResourcesApi* | [**list_resources**](docs/ResourcesApi.md#list_resources) | **GET** /resources | 
*TriglavClient::ResourcesApi* | [**update_resource**](docs/ResourcesApi.md#update_resource) | **PATCH** /resources/{id_or_uri} | 
*TriglavClient::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /users | 
*TriglavClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{id} | 
*TriglavClient::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{id} | 
*TriglavClient::UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /users | 
*TriglavClient::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PATCH** /users/{id} | 


## Documentation for Models

 - [TriglavClient::AccessTokenStruct](docs/AccessTokenStruct.md)
 - [TriglavClient::Cluster](docs/Cluster.md)
 - [TriglavClient::ClusterEach](docs/ClusterEach.md)
 - [TriglavClient::ClusterInput](docs/ClusterInput.md)
 - [TriglavClient::Credential](docs/Credential.md)
 - [TriglavClient::ErrorModel](docs/ErrorModel.md)
 - [TriglavClient::Job](docs/Job.md)
 - [TriglavClient::JobEach](docs/JobEach.md)
 - [TriglavClient::JobInput](docs/JobInput.md)
 - [TriglavClient::Message](docs/Message.md)
 - [TriglavClient::MessageEach](docs/MessageEach.md)
 - [TriglavClient::MessageInput](docs/MessageInput.md)
 - [TriglavClient::Resource](docs/Resource.md)
 - [TriglavClient::ResourceEach](docs/ResourceEach.md)
 - [TriglavClient::ResourceInput](docs/ResourceInput.md)
 - [TriglavClient::User](docs/User.md)
 - [TriglavClient::UserEach](docs/UserEach.md)
 - [TriglavClient::UserInput](docs/UserInput.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
