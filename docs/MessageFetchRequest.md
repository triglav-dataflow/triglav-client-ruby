# TriglavClient::MessageFetchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **Integer** | Offset (Greater than or equal to) ID for Messages to fetch from | 
**limit** | **Integer** | Number of limits | [optional] 
**resource_uris** | **Array&lt;String&gt;** | URIs of Resource | [optional] 
**resource_unit** | **String** | Resource Unit such as daily, hourly, or singular. Required if resource_time is given | [optional] 
**resource_time** | **Integer** | Resource Time in UNIX TIMESTAMP | [optional] 


