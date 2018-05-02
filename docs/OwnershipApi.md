# SwaggerClient::OwnershipApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_country_code_company_id_bank_accounts_format_get**](OwnershipApi.md#company_country_code_company_id_bank_accounts_format_get) | **GET** /company/{countryCode}/{companyId}/bank-accounts.{format} | Company bank accounts
[**company_country_code_company_id_charges_format_get**](OwnershipApi.md#company_country_code_company_id_charges_format_get) | **GET** /company/{countryCode}/{companyId}/charges.{format} | Company charges
[**company_country_code_company_id_fca_authorisations_format_get**](OwnershipApi.md#company_country_code_company_id_fca_authorisations_format_get) | **GET** /company/{countryCode}/{companyId}/fca-authorisations.{format} | Company FCA authorisations
[**company_country_code_company_id_filings_format_get**](OwnershipApi.md#company_country_code_company_id_filings_format_get) | **GET** /company/{countryCode}/{companyId}/filings.{format} | Company filings
[**company_country_code_company_id_gazette_notices_format_get**](OwnershipApi.md#company_country_code_company_id_gazette_notices_format_get) | **GET** /company/{countryCode}/{companyId}/gazette-notices.{format} | Company gazette notices
[**company_country_code_company_id_group_parents_format_get**](OwnershipApi.md#company_country_code_company_id_group_parents_format_get) | **GET** /company/{countryCode}/{companyId}/group-parents.{format} | Company group parents
[**company_country_code_company_id_group_subsidiaries_format_get**](OwnershipApi.md#company_country_code_company_id_group_subsidiaries_format_get) | **GET** /company/{countryCode}/{companyId}/group-subsidiaries.{format} | Company group subsidiaries
[**company_country_code_company_id_persons_significant_control_format_get**](OwnershipApi.md#company_country_code_company_id_persons_significant_control_format_get) | **GET** /company/{countryCode}/{companyId}/persons-significant-control.{format} | Company persons of significant control
[**company_country_code_company_id_portfolio_companies_format_get**](OwnershipApi.md#company_country_code_company_id_portfolio_companies_format_get) | **GET** /company/{countryCode}/{companyId}/portfolio-companies.{format} | Company portfolio companies
[**company_country_code_company_id_related_companies_format_get**](OwnershipApi.md#company_country_code_company_id_related_companies_format_get) | **GET** /company/{countryCode}/{companyId}/related-companies.{format} | Company related companies
[**company_country_code_company_id_shareholders_format_get**](OwnershipApi.md#company_country_code_company_id_shareholders_format_get) | **GET** /company/{countryCode}/{companyId}/shareholders.{format} | Company shareholders


# **company_country_code_company_id_bank_accounts_format_get**
> CompanyBankAccountsResponse company_country_code_company_id_bank_accounts_format_get(country_code, company_id, format, , opts)

Company bank accounts

Get bank accounts for a given company.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company bank accounts
  result = api_instance.company_country_code_company_id_bank_accounts_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_bank_accounts_format_get: #{e}"
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

[**CompanyBankAccountsResponse**](CompanyBankAccountsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_charges_format_get**
> CompanyChargesResponse company_country_code_company_id_charges_format_get(country_code, company_id, format, , opts)

Company charges

Get charges for a given company.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company charges
  result = api_instance.company_country_code_company_id_charges_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_charges_format_get: #{e}"
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

[**CompanyChargesResponse**](CompanyChargesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_fca_authorisations_format_get**
> CompanyFCAAuthorisationsResponse company_country_code_company_id_fca_authorisations_format_get(country_code, company_id, format, , opts)

Company FCA authorisations

Get the Financial Conduct Authority authorisations or registrations for a given UK company. Due to the nature of this regulation, country codes other than 'gb' will not be supported.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company FCA authorisations
  result = api_instance.company_country_code_company_id_fca_authorisations_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_fca_authorisations_format_get: #{e}"
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

[**CompanyFCAAuthorisationsResponse**](CompanyFCAAuthorisationsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_filings_format_get**
> CompanyFilingsResponse company_country_code_company_id_filings_format_get(country_code, company_id, format, , opts)

Company filings

Get filings for a given company.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company filings
  result = api_instance.company_country_code_company_id_filings_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_filings_format_get: #{e}"
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

[**CompanyFilingsResponse**](CompanyFilingsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_gazette_notices_format_get**
> CompanyGazetteNoticesResponse company_country_code_company_id_gazette_notices_format_get(country_code, company_id, format, , opts)

Company gazette notices

Get gazette notices for a given company.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company gazette notices
  result = api_instance.company_country_code_company_id_gazette_notices_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_gazette_notices_format_get: #{e}"
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

[**CompanyGazetteNoticesResponse**](CompanyGazetteNoticesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_group_parents_format_get**
> CompanyGroupParentsResponse company_country_code_company_id_group_parents_format_get(country_code, company_id, format, , opts)

Company group parents

Get group parents for a given company. 

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company group parents
  result = api_instance.company_country_code_company_id_group_parents_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_group_parents_format_get: #{e}"
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

[**CompanyGroupParentsResponse**](CompanyGroupParentsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_group_subsidiaries_format_get**
> CompanyGroupSubsidiariesResponse company_country_code_company_id_group_subsidiaries_format_get(country_code, company_id, format, , opts)

Company group subsidiaries

Get group subsidiaries for a given company. 

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company group subsidiaries
  result = api_instance.company_country_code_company_id_group_subsidiaries_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_group_subsidiaries_format_get: #{e}"
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

[**CompanyGroupSubsidiariesResponse**](CompanyGroupSubsidiariesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_persons_significant_control_format_get**
> PoSCResponse company_country_code_company_id_persons_significant_control_format_get(country_code, company_id, format, , opts)

Company persons of significant control

Get persons of significant control (PoSC) for a given company.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company persons of significant control
  result = api_instance.company_country_code_company_id_persons_significant_control_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_persons_significant_control_format_get: #{e}"
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

[**PoSCResponse**](PoSCResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_portfolio_companies_format_get**
> CompanyPortfolioCompaniesResponse company_country_code_company_id_portfolio_companies_format_get(country_code, company_id, format, , opts)

Company portfolio companies

Get portfolio companies for a given company. Currently, these correspond to known UK and Irish shareholdings based on the annual returns of other UK and Irish companies, *excluding subsidiaries* (which are available via the group-subsidiaries endpoint). 

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company portfolio companies
  result = api_instance.company_country_code_company_id_portfolio_companies_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_portfolio_companies_format_get: #{e}"
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

[**CompanyPortfolioCompaniesResponse**](CompanyPortfolioCompaniesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_related_companies_format_get**
> CompanyRelatedCompaniesResponse company_country_code_company_id_related_companies_format_get(country_code, company_id, format, , opts)

Company related companies

Get potentially related UK and Irish companies based on a number of reasons relating to governance and location. This list intentionally excludes companies that are separately identified as shareholders, group or portfolio companies.

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company related companies
  result = api_instance.company_country_code_company_id_related_companies_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_related_companies_format_get: #{e}"
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

[**CompanyRelatedCompaniesResponse**](CompanyRelatedCompaniesResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_country_code_company_id_shareholders_format_get**
> CompanyShareholdersResponse company_country_code_company_id_shareholders_format_get(country_code, company_id, format, , opts)

Company shareholders

Get shareholders and their shareholdings for a given company. 

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

api_instance = SwaggerClient::OwnershipApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company shareholders
  result = api_instance.company_country_code_company_id_shareholders_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OwnershipApi->company_country_code_company_id_shareholders_format_get: #{e}"
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

[**CompanyShareholdersResponse**](CompanyShareholdersResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



