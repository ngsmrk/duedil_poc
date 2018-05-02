# SwaggerClient::CreditReportApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_country_code_company_id_credit_report_format_get**](CreditReportApi.md#company_country_code_company_id_credit_report_format_get) | **GET** /company/{countryCode}/{companyId}/credit-report.{format} | Credit report


# **company_country_code_company_id_credit_report_format_get**
> CompanyCreditReportResponse company_country_code_company_id_credit_report_format_get(country_code, company_id, format, )

Credit report

Get credit report for a given company. ### Sandbox  In Sandbox environment this endpoint will generate static response from historical data of real credit reports for 7 predefined companies. All other requests will result in credit report not found response (HTTP 404).   The companies are as follows  - Bp P.L.C. - countryCode: **gb** companyId: **00102498**  - Royal Dutch Shell Plc - countryCode: **gb** companyId: **04366849**  - Hsbc Holdings Plc - countryCode: **gb** companyId: **00617987**  - Tesco Plc - countryCode: **gb** companyId: **00445790**  - Vodafone Group Public Limited Company - countryCode: **gb** companyId: **01833679**  - Woolworths Group PLC - countryCode: **gb** companyId: **03855289**  - Brompton Bicycle Limited - countryCode: **gb** companyId: **01261512** 

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

api_instance = SwaggerClient::CreditReportApi.new

country_code = "country_code_example" # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.

company_id = "company_id_example" # String | Company registration number

format = "format_example" # String | Response format. Currently, only supported option is json.


begin
  #Credit report
  result = api_instance.company_country_code_company_id_credit_report_format_get(country_code, company_id, format, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CreditReportApi->company_country_code_company_id_credit_report_format_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase. | 
 **company_id** | **String**| Company registration number | 
 **format** | **String**| Response format. Currently, only supported option is json. | 

### Return type

[**CompanyCreditReportResponse**](CompanyCreditReportResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



