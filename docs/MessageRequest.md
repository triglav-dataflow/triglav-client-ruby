# TriglavClient::MessageRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Universally Unique ID to be used to avoid duplicated messages | [optional] 
**resource_uri** | **String** | URI of Resource | 
**resource_unit** | **String** | Time unit of resource to monitor such as singular, daily, or hourly | 
**resource_time** | **Integer** | Time of Resource in unix timestamp such as 1476025200 (2016-10-10 in +09:00) | 
**resource_timezone** | **String** | Timezone of resource time, that is, timezone of %Y-%m-%d for hdfs://path/to/%Y-%m-%d such as +09:00 | 
**payload** | **String** | Any json string | [optional] 


