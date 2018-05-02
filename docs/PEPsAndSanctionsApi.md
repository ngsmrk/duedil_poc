# SwaggerClient::PEPsAndSanctionsApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**peps_sanctions_business_lookup_id_format_get**](PEPsAndSanctionsApi.md#peps_sanctions_business_lookup_id_format_get) | **GET** /peps-sanctions/business/{lookupId}.{format} | PEPs and Sanctions business lookup
[**peps_sanctions_individual_lookup_id_format_get**](PEPsAndSanctionsApi.md#peps_sanctions_individual_lookup_id_format_get) | **GET** /peps-sanctions/individual/{lookupId}.{format} | PEPs and Sanctions individuals lookup
[**peps_sanctions_search_businesses_format_post**](PEPsAndSanctionsApi.md#peps_sanctions_search_businesses_format_post) | **POST** /peps-sanctions/search/businesses.{format} | PEPs and Sanctions businesses search
[**peps_sanctions_search_individuals_format_post**](PEPsAndSanctionsApi.md#peps_sanctions_search_individuals_format_post) | **POST** /peps-sanctions/search/individuals.{format} | PEPs and Sanctions individuals search


# **peps_sanctions_business_lookup_id_format_get**
> PEPsAndSanctionsBusinessLookupResponse peps_sanctions_business_lookup_id_format_get(format, lookup_id)

PEPs and Sanctions business lookup

Runs a lookup for business with PEPs or sanctions by lookup ID. ### Sandbox The sandbox environment returns static historical data for a predefined business.  All other requests will result in a not found response (HTTP 404).  - Sabtina Ltd - lookupId: **DD-677a7e01005c**

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

api_instance = SwaggerClient::PEPsAndSanctionsApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

lookup_id = "lookup_id_example" # String | Business or Individual lookup ID


begin
  #PEPs and Sanctions business lookup
  result = api_instance.peps_sanctions_business_lookup_id_format_get(format, lookup_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PEPsAndSanctionsApi->peps_sanctions_business_lookup_id_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **lookup_id** | **String**| Business or Individual lookup ID | 

### Return type

[**PEPsAndSanctionsBusinessLookupResponse**](PEPsAndSanctionsBusinessLookupResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **peps_sanctions_individual_lookup_id_format_get**
> PEPsAndSanctionsIndividualLookupResponse peps_sanctions_individual_lookup_id_format_get(format, lookup_id)

PEPs and Sanctions individuals lookup

Runs a lookup for individuals with PEPs or sanctions by lookup ID. ### Sandbox The sandbox environment returns static historical data for a predefined individual.  All other requests will result in a not found response (HTTP 404). Personal information relating to individuals such as address and email has been replaced with the following string: `<obfuscated>`  - David Cameron - lookupId: **DD-617b78020152** 

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

api_instance = SwaggerClient::PEPsAndSanctionsApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

lookup_id = "lookup_id_example" # String | Business or Individual lookup ID


begin
  #PEPs and Sanctions individuals lookup
  result = api_instance.peps_sanctions_individual_lookup_id_format_get(format, lookup_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PEPsAndSanctionsApi->peps_sanctions_individual_lookup_id_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **lookup_id** | **String**| Business or Individual lookup ID | 

### Return type

[**PEPsAndSanctionsIndividualLookupResponse**](PEPsAndSanctionsIndividualLookupResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **peps_sanctions_search_businesses_format_post**
> PEPsAndSanctionsBusinessSearchResponse peps_sanctions_search_businesses_format_post(format, peps_and_sanctions_businesses)

PEPs and Sanctions businesses search

Runs a search for business with PEPs or sanctions. ### Sandbox The sandbox environment returns static historical data for 2 predefined businesses.  All other requests will result in a not found response (HTTP 404).  - **Businesses Search - DueDil Company**   ```   {     \"criteria\": {       \"duedilCompany\": {         \"companyId\": \"01794877\",         \"countryCode\": \"gb\"       }     }    }   ```    ---  - **Businesses Search - Any Business**   ```   {     \"criteria\": {        \"anyBusiness\": {         \"name\": \"Gazprom Media Holding\",         \"countryCode\": \"ru\"       }     }   }   ```    --- 

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

api_instance = SwaggerClient::PEPsAndSanctionsApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

peps_and_sanctions_businesses = SwaggerClient::PEPsAndSanctionsBusinessSearchCriteria.new # PEPsAndSanctionsBusinessSearchCriteria | Details about a business and their address to conduct an PEPs and Sanctions check.


begin
  #PEPs and Sanctions businesses search
  result = api_instance.peps_sanctions_search_businesses_format_post(format, peps_and_sanctions_businesses)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PEPsAndSanctionsApi->peps_sanctions_search_businesses_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **peps_and_sanctions_businesses** | [**PEPsAndSanctionsBusinessSearchCriteria**](PEPsAndSanctionsBusinessSearchCriteria.md)| Details about a business and their address to conduct an PEPs and Sanctions check. | 

### Return type

[**PEPsAndSanctionsBusinessSearchResponse**](PEPsAndSanctionsBusinessSearchResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **peps_sanctions_search_individuals_format_post**
> PEPsAndSanctionsIndividualSearchResponse peps_sanctions_search_individuals_format_post(format, peps_and_sanctions_individuals)

PEPs and Sanctions individuals search

Runs a search for individuals with PEPs or sanctions. ### Sandbox The sandbox environment returns static historical data for 2 predefined individuals. All other requests will result in a not found response (HTTP 404). Personal information relating to individuals such as address and email has been replaced with the following string: `<obfuscated>`  - **Individuals Search - DueDil Officer**   ```    {     \"criteria\": {       \"duedilOfficer\": {         \"officerId\": \"915779948\"       }      }   }    ```    ---  - **Individuals Search - Any Individual**   ```    {     \"criteria\": {       \"anyIndividual\": {         \"firstName\": \"David\",         \"lastName\": \"Cameron\",         \"dateOfBirth\": {           \"year\": 1966         }       }     }   }   ```    --- 

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

api_instance = SwaggerClient::PEPsAndSanctionsApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

peps_and_sanctions_individuals = SwaggerClient::PEPsAndSanctionsIndividualSearchCriteria.new # PEPsAndSanctionsIndividualSearchCriteria | Details about an individual and their address to conduct an PEPs and Sanctions check.


begin
  #PEPs and Sanctions individuals search
  result = api_instance.peps_sanctions_search_individuals_format_post(format, peps_and_sanctions_individuals)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PEPsAndSanctionsApi->peps_sanctions_search_individuals_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **peps_and_sanctions_individuals** | [**PEPsAndSanctionsIndividualSearchCriteria**](PEPsAndSanctionsIndividualSearchCriteria.md)| Details about an individual and their address to conduct an PEPs and Sanctions check. | 

### Return type

[**PEPsAndSanctionsIndividualSearchResponse**](PEPsAndSanctionsIndividualSearchResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



