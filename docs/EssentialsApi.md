# SwaggerClient::EssentialsApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_country_code_company_id_addresses_format_get**](EssentialsApi.md#company_country_code_company_id_addresses_format_get) | **GET** /company/{countryCode}/{companyId}/addresses.{format} | Company addresses
[**company_country_code_company_id_descriptions_format_get**](EssentialsApi.md#company_country_code_company_id_descriptions_format_get) | **GET** /company/{countryCode}/{companyId}/descriptions.{format} | Company descriptions
[**company_country_code_company_id_format_get**](EssentialsApi.md#company_country_code_company_id_format_get) | **GET** /company/{countryCode}/{companyId}.{format} | Company vitals
[**company_country_code_company_id_industries_format_get**](EssentialsApi.md#company_country_code_company_id_industries_format_get) | **GET** /company/{countryCode}/{companyId}/industries.{format} | Company industries
[**company_country_code_company_id_keywords_format_get**](EssentialsApi.md#company_country_code_company_id_keywords_format_get) | **GET** /company/{countryCode}/{companyId}/keywords.{format} | Company keywords
[**company_country_code_company_id_officers_format_get**](EssentialsApi.md#company_country_code_company_id_officers_format_get) | **GET** /company/{countryCode}/{companyId}/officers.{format} | Company officers
[**company_country_code_company_id_registered_names_format_get**](EssentialsApi.md#company_country_code_company_id_registered_names_format_get) | **GET** /company/{countryCode}/{companyId}/registered-names.{format} | Company registered names
[**company_country_code_company_id_related_names_format_get**](EssentialsApi.md#company_country_code_company_id_related_names_format_get) | **GET** /company/{countryCode}/{companyId}/related-names.{format} | Company related names
[**company_country_code_company_id_social_media_profiles_format_get**](EssentialsApi.md#company_country_code_company_id_social_media_profiles_format_get) | **GET** /company/{countryCode}/{companyId}/social-media-profiles.{format} | Company social media profiles
[**company_country_code_company_id_telephone_numbers_format_get**](EssentialsApi.md#company_country_code_company_id_telephone_numbers_format_get) | **GET** /company/{countryCode}/{companyId}/telephone-numbers.{format} | Company telephone numbers
[**company_country_code_company_id_websites_format_get**](EssentialsApi.md#company_country_code_company_id_websites_format_get) | **GET** /company/{countryCode}/{companyId}/websites.{format} | Company websites
[**officer_officer_id_companies_format_get**](EssentialsApi.md#officer_officer_id_companies_format_get) | **GET** /officer/{officerId}/companies.{format} | Officer appointments
[**officer_officer_id_format_get**](EssentialsApi.md#officer_officer_id_format_get) | **GET** /officer/{officerId}.{format} | Officer vitals


# **company_country_code_company_id_addresses_format_get**
> CompanyAddressesResponse company_country_code_company_id_addresses_format_get(country_code, company_id, format, , opts)

Company addresses

Get addresses for a given company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company addresses
  result = api_instance.company_country_code_company_id_addresses_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_addresses_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyAddressesResponse**](CompanyAddressesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_descriptions_format_get**
> CompanyDescriptionsResponse company_country_code_company_id_descriptions_format_get(country_code, company_id, format, , opts)

Company descriptions

Get descriptions for a given company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company descriptions
  result = api_instance.company_country_code_company_id_descriptions_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_descriptions_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyDescriptionsResponse**](CompanyDescriptionsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_format_get**
> CompanyResponse company_country_code_company_id_format_get(country_code, company_id, format, )

Company vitals

Get key information for a given company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.


begin
  #Company vitals
  result = api_instance.company_country_code_company_id_format_get(country_code, company_id, format, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 

### Return type

[**CompanyResponse**](CompanyResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_industries_format_get**
> CompanyIndustriesResponse company_country_code_company_id_industries_format_get(country_code, company_id, format, , opts)

Company industries

Get industries for a given company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
  types: ["types_example"] # Array<String> | List of industry classification systems to include if available
}

begin
  #Company industries
  result = api_instance.company_country_code_company_id_industries_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_industries_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]
 **types** | [**Array&lt;String&gt;**](String.md)| List of industry classification systems to include if available | [optional] 

### Return type

[**CompanyIndustriesResponse**](CompanyIndustriesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_keywords_format_get**
> CompanyKeywordsResponse company_country_code_company_id_keywords_format_get(country_code, company_id, format, , opts)

Company keywords

Get keywords associated with a given company 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company keywords
  result = api_instance.company_country_code_company_id_keywords_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_keywords_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyKeywordsResponse**](CompanyKeywordsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_officers_format_get**
> CompanyOfficersResponse company_country_code_company_id_officers_format_get(country_code, company_id, format, , opts)

Company officers

Get officers and their appointments for a given company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
  appointment_statuses: ["appointment_statuses_example"] # Array<String> | List of appointment statuses to include
}

begin
  #Company officers
  result = api_instance.company_country_code_company_id_officers_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_officers_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]
 **appointment_statuses** | [**Array&lt;String&gt;**](String.md)| List of appointment statuses to include | [optional] 

### Return type

[**CompanyOfficersResponse**](CompanyOfficersResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_registered_names_format_get**
> CompanyRegisteredNamesResponse company_country_code_company_id_registered_names_format_get(country_code, company_id, format, , opts)

Company registered names

Get registered names for a company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company registered names
  result = api_instance.company_country_code_company_id_registered_names_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_registered_names_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyRegisteredNamesResponse**](CompanyRegisteredNamesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_related_names_format_get**
> CompanyRelatedNamesResponse company_country_code_company_id_related_names_format_get(country_code, company_id, format, , opts)

Company related names

Get related names for a given company. 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company related names
  result = api_instance.company_country_code_company_id_related_names_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_related_names_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyRelatedNamesResponse**](CompanyRelatedNamesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_social_media_profiles_format_get**
> CompanySocialMediaProfilesResponse company_country_code_company_id_social_media_profiles_format_get(country_code, company_id, format, , opts)

Company social media profiles

Get social media profiles for a given company.

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
  platforms: ["platforms_example"] # Array<String> | List of platforms to include
}

begin
  #Company social media profiles
  result = api_instance.company_country_code_company_id_social_media_profiles_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_social_media_profiles_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]
 **platforms** | [**Array&lt;String&gt;**](String.md)| List of platforms to include | [optional] 

### Return type

[**CompanySocialMediaProfilesResponse**](CompanySocialMediaProfilesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_telephone_numbers_format_get**
> CompanyTelephoneNumbersResponse company_country_code_company_id_telephone_numbers_format_get(country_code, company_id, format, , opts)

Company telephone numbers

Get telephone numbers associated with a given company 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company telephone numbers
  result = api_instance.company_country_code_company_id_telephone_numbers_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_telephone_numbers_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyTelephoneNumbersResponse**](CompanyTelephoneNumbersResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_websites_format_get**
> CompanyWebsitesResponse company_country_code_company_id_websites_format_get(country_code, company_id, format, , opts)

Company websites

Get websites associated with a given company 

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

api_instance = SwaggerClient::EssentialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company websites
  result = api_instance.company_country_code_company_id_websites_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->company_country_code_company_id_websites_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]

### Return type

[**CompanyWebsitesResponse**](CompanyWebsitesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **officer_officer_id_companies_format_get**
> OfficerCompaniesResponse officer_officer_id_companies_format_get(officer_id, format, , opts)

Officer appointments

Get all companies and appointments for a given officer.

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

api_instance = SwaggerClient::EssentialsApi.new

officer_id = "officer_id_example" # String | Officer id

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
  appointment_statuses: ["appointment_statuses_example"] # Array<String> | List of appointment statuses to include
}

begin
  #Officer appointments
  result = api_instance.officer_officer_id_companies_format_get(officer_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->officer_officer_id_companies_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **officer_id** | **String**| Officer id | 
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **offset** | **Integer**| Determines the 0-based index of the first element of the collection to be returned | [optional] [default to 0]
 **limit** | **Integer**| Configures the maximum number of items from the collection to be returned in the given API call | [optional] [default to 10]
 **appointment_statuses** | [**Array&lt;String&gt;**](String.md)| List of appointment statuses to include | [optional] 

### Return type

[**OfficerCompaniesResponse**](OfficerCompaniesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **officer_officer_id_format_get**
> OfficerResponse officer_officer_id_format_get(officer_id, format, )

Officer vitals

Get key information for a given officer. Note that an officer can be either a person or a company acting as a corporate officer. **WARNING: We plan to make non-backwards compatible changes to officer identifiers in the near future to accommodate data from other countries.** 

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

api_instance = SwaggerClient::EssentialsApi.new

officer_id = "officer_id_example" # String | Officer id

format = "format_example" # String | Response format. Currently, only supported option is json.


begin
  #Officer vitals
  result = api_instance.officer_officer_id_format_get(officer_id, format, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EssentialsApi->officer_officer_id_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **officer_id** | **String**| Officer id | 
 **format** | **String**| Response format. Currently, only supported option is json. | 

### Return type

[**OfficerResponse**](OfficerResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



