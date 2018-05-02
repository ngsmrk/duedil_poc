# SwaggerClient::SearchApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_companies_format_post**](SearchApi.md#search_companies_format_post) | **POST** /search/companies.{format} | Find companies
[**search_keywords_format_post**](SearchApi.md#search_keywords_format_post) | **POST** /search/keywords.{format} | Find keywords (to be used on company/officer search filters)
[**search_officers_format_post**](SearchApi.md#search_officers_format_post) | **POST** /search/officers.{format} | Find officers
[**search_regions_format_post**](SearchApi.md#search_regions_format_post) | **POST** /search/regions.{format} | Find regions (to be used on company/officer search filters)


# **search_companies_format_post**
> CompanySearchResponse search_companies_format_post(format, body, opts)

Find companies

Find companies based on search criteria.  **Note:** Certain search criteria can only be accessed when a particular endpoint package is purchased. For example, the creditRisk filter is restricted to keys with the [Credit Report](#tag/Credit-report) package. Where applicable, these restrictions are included in the criteria descriptions.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: UserSecurity
  config.api_key['X-AUTH-TOKEN'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-AUTH-TOKEN'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

body = SwaggerClient::CompanySearchCriteria.new # CompanySearchCriteria | Company search criteria

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Find companies
  result = api_instance.search_companies_format_post(format, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_companies_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **body** | [**CompanySearchCriteria**](CompanySearchCriteria.md)| Company search criteria | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanySearchResponse**](CompanySearchResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **search_keywords_format_post**
> KeywordSearchResponse search_keywords_format_post(format, body, opts)

Find keywords (to be used on company/officer search filters)

Find keywords based on search criteria. Full keywords can then be used as a value for company or director search filters 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: UserSecurity
  config.api_key['X-AUTH-TOKEN'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-AUTH-TOKEN'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

body = SwaggerClient::KeywordSearchCriteria.new # KeywordSearchCriteria | Keyword search criteria

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Find keywords (to be used on company/officer search filters)
  result = api_instance.search_keywords_format_post(format, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_keywords_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **body** | [**KeywordSearchCriteria**](KeywordSearchCriteria.md)| Keyword search criteria | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**KeywordSearchResponse**](KeywordSearchResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **search_officers_format_post**
> OfficerSearchResponse search_officers_format_post(format, body, opts)

Find officers

Find officers based on search criteria. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: UserSecurity
  config.api_key['X-AUTH-TOKEN'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-AUTH-TOKEN'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

body = SwaggerClient::OfficerSearchCriteria.new # OfficerSearchCriteria | Officer search criteria

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Find officers
  result = api_instance.search_officers_format_post(format, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_officers_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **body** | [**OfficerSearchCriteria**](OfficerSearchCriteria.md)| Officer search criteria | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**OfficerSearchResponse**](OfficerSearchResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **search_regions_format_post**
> RegionSearchResponse search_regions_format_post(format, body, opts)

Find regions (to be used on company/officer search filters)

Find regions based on search criteria. Region IDs can then be used as a value for company or director search filters. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: UserSecurity
  config.api_key['X-AUTH-TOKEN'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-AUTH-TOKEN'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

body = SwaggerClient::RegionSearchCriteria.new # RegionSearchCriteria | Region search criteria

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Find regions (to be used on company/officer search filters)
  result = api_instance.search_regions_format_post(format, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_regions_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **body** | [**RegionSearchCriteria**](RegionSearchCriteria.md)| Region search criteria | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**RegionSearchResponse**](RegionSearchResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



