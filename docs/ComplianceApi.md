# SwaggerClient::ComplianceApi

All URIs are relative to *https://duedil.io/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callcredit_identity_check_format_post**](ComplianceApi.md#callcredit_identity_check_format_post) | **POST** /callcredit/identity-check.{format} | Identity check
[**duedil_company_check_format_post**](ComplianceApi.md#duedil_company_check_format_post) | **POST** /duedil/company-check.{format} | Company check


# **callcredit_identity_check_format_post**
> CallcreditIdentityCheckResponse callcredit_identity_check_format_post(format, callcredit_identity_check)

Identity check

Perform an identity check against an individual in the UK, powered by Callcredit data.

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

api_instance = SwaggerClient::ComplianceApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

callcredit_identity_check = SwaggerClient::CallcreditIdentityCheckInput.new # CallcreditIdentityCheckInput | Details about an individual and their address to conduct an identity check.


begin
  #Identity check
  result = api_instance.callcredit_identity_check_format_post(format, callcredit_identity_check)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ComplianceApi->callcredit_identity_check_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **callcredit_identity_check** | [**CallcreditIdentityCheckInput**](CallcreditIdentityCheckInput.md)| Details about an individual and their address to conduct an identity check. | 

### Return type

[**CallcreditIdentityCheckResponse**](CallcreditIdentityCheckResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **duedil_company_check_format_post**
> CompanyCheckResponse duedil_company_check_format_post(format, body)

Company check

Match given inputs against registered companies in the UK and Ireland. A billable company report will be generated using the following rules:   ### Reasons for a FAIL result - Simplified company status is Closed - A current officer is disqualified - No company was matched - Company matched has no data - PEPs and sanctions check returned one or more businesses with a match score of 100  ### Possible warnings (Will not cause a FAIL) - Simplified company status is Intermediate - One or more Gazette notices were found - No shareholder information was found - No shareholder information was found for the ultimate parent - Ultimate parent is a foreign company - Annual return or confirmation statement is overdue - Accounts are overdue - A former officer is disqualified - PEPs and sanctions check returned one or more businesses with a match score at or above 80  If multiple potential matches are found, a pick list is returned with enough information to allow for a more specific subsequent request (not billable).  ### Sandbox In Sandbox environment this endpoint will generate static response from historical data of real company check reports for 7 predefined company searches. All other requests will result in report not found response (HTTP 404).    ### Example search requests - **Hsbc Holdings Plc**   ```    {     \"companyId\": \"00617987\"   }    ```    --- - **Woolworths Group Plc**   ```    {     \"companyId\": \"03855289\"   }    ```   --- - **Royal Dutch Shell Plc**   ```    {     \"companyId\": \"04366849\"   }    ```   --- - **Evi Technologies Limited**   ```    {     \"companyId\": \"04660006\"   }    ```   --- - **Duedil Limited**   ```    {     \"companyId\": \"06999618\"   }    ```   --- - **Brompton Bicycle Limited**   ```    {     \"companyId\": \"01261512\",     \"name\": \"Brompton Bicycle Limited\",     \"countryCodes\": {         \"values\": [             \"GB\"         ]     }   }    ```   --- - **Tesco name search**   ```    {     \"name\": \"tesco\",     \"countryCodes\": {         \"values\": [             \"GB\"         ]     }   }    ```   --- 

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

api_instance = SwaggerClient::ComplianceApi.new

format = "format_example" # String | Response format. Currently, only supported option is json.

body = SwaggerClient::CompanyCheckCriteria.new # CompanyCheckCriteria | Company check criteria.


begin
  #Company check
  result = api_instance.duedil_company_check_format_post(format, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ComplianceApi->duedil_company_check_format_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Response format. Currently, only supported option is json. | 
 **body** | [**CompanyCheckCriteria**](CompanyCheckCriteria.md)| Company check criteria. | 

### Return type

[**CompanyCheckResponse**](CompanyCheckResponse.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



