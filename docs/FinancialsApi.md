# SwaggerClient::FinancialsApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_country_code_company_id_financials_format_get**](FinancialsApi.md#company_country_code_company_id_financials_format_get) | **GET** /company/{countryCode}/{companyId}/financials.{format} | Company financials


# **company_country_code_company_id_financials_format_get**
> CompanyFinancialsResponse company_country_code_company_id_financials_format_get(country_code, company_id, format, , opts)

Company financials

Get company financial filings for a given company.  We have extensive data coverage for companies in UK and Republic of Ireland.  Beware that for other countries the data coverage varies and you could expect to receive HTTP 404 (Not Found) response where we have no matching record for the country and company or partial response with null fields where data is missing. 

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

api_instance = SwaggerClient::FinancialsApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.

opts = { 
  offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
  limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
}

begin
  #Company financials
  result = api_instance.company_country_code_company_id_financials_format_get(country_code, company_id, format, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FinancialsApi->company_country_code_company_id_financials_format_get: #{e}"
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

[**CompanyFinancialsResponse**](CompanyFinancialsResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



