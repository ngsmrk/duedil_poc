=begin
#DueDil API v4

#Welcome to the DueDil API v4, which provides programmatic access to DueDil's comprehensive company data. It can be used to enhance a wide variety of business functions, from auto-populating website forms to verifying customer credentials.  ### Getting started In order to make requests, you'll need to obtain an API key. Please visit https://www.duedil.com/api for more information. Once you have an API key, requests can be made using a UI such as [Postman](https://www.getpostman.com/) or via a terminal using [curl](https://curl.haxx.se/docs/manual.html). An example curl request should look as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/gb/06999618.json' ```  ### Generating clients  This API has been authored using the [OpenAPI](https://en.wikipedia.org/wiki/OpenAPI_Specification) (Swagger) specification. Being machine readable, it can be used to generate V4 API clients in a range of languages. To create a client:   * Open the [Swagger Editor](http://editor.swagger.io/).  * Select 'File', 'Import URL' then enter https://duedil.io/v4/swagger.json  * Select 'Generate Client' then choose from over 30 languages such as PHP, Python and Java.  ### International data  DueDil provides a wide range of data spanning across multiple geographic regions. Our international package currently includes company information from the following countries:  | Country              |    | Country       |    | |----------------------|----|---------------|----| | Albania              | AL | Jersey        | JE | | Bahamas              | BS | Latvia        | LV | | Belgium              | BE | Liechtenstein | LI | | Bermuda              | BM | Luxembourg    | LU | | Hong Kong, SAR China | HK | Malta         | MT | | Cyprus               | CY | Montenegro    | ME | | Denmark              | DK | Netherlands   | NL | | Finland              | FI | Norway        | NO | | France               | FR | Poland        | PL | | Germany              | DE | Romania       | RO | | Greenland            | GL | Slovakia      | SK | | Guernsey             | GG | Slovenia      | SI | | Iceland              | IS | Sweden        | SE | | Isle of Man          | IM | Switzerland   | CH | | Israel               | IL |               |    |  Retrieving international data is simple. Construct your request with the corresponding country code. For the German company [Daimler AG](https://www.duedil.com/company/de/Stuttgart%20HRB%2019360/daimler-ag) you should construct your request URI as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/de/Stuttgart%20HRB%2019360.json' ```  For Companies search, the country code should be included in the post body:  ``` {     \"criteria\": {         \"name\": \"Daimler AG\",         \"countryCodes\": {             \"values\": [\"DE\", \"FR\"]         }     } } ```  **Note:** You will need to have international access added to your plan to search for and retrieve information for companies outside of the United Kingdom (GB) and Ireland (IE).  #### Data coverage  While 100% coverage is our goal, this is not feasible for every international country at present. If we cannot find the entity you are requesting, the API will return HTTP 404 with message “Resource not found”. Partial responses can include null fields where specific data is unavailable.  ### Pagination  All endpoints that return collections can be paginated in the same way through two optional parameters (`limit` and `offset`). The `offset` parameter determines the 0-based index of the first element of the collection to be returned, which defaults to 0. The `limit` parameter sets the maximum number of items from the collection to be returned, which defaults to 10. The maximum allowed limit parameter is 50.  **Note:** API keys issued for evaluation purposes will have limited access to the first 10 search results only. Other non-search endpoints do not apply this constraint.   Every response from a paginated endpoint contains a top-level property called `pagination`, which in turn contains the `offset` and `limit` values used in the API call, as well as the `total` number of items in the collection. For instance:   ``` \"pagination\": {   \"offset\": 0,   \"limit\": 10,   \"total\": 12 } ```   In the example above, an API call with `offset` = 10 and `limit` = 10 would return the 11th and 12th items in the collection, whereas an API call with `offset` = 20 and `limit` = 10 would return a successful response (200 HTTP code) with an empty collection. Calls with invalid `offset`/`limit` parameters, such as negative values, return an error (400 HTTP code). 

OpenAPI spec version: 4.4.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class ComplianceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Identity check
    # Perform an identity check against an individual in the UK, powered by Callcredit data.
    # @param format Response format. Currently, only supported option is json.
    # @param callcredit_identity_check Details about an individual and their address to conduct an identity check.
    # @param [Hash] opts the optional parameters
    # @return [CallcreditIdentityCheckResponse]
    def callcredit_identity_check_format_post(format, callcredit_identity_check, opts = {})
      data, _status_code, _headers = callcredit_identity_check_format_post_with_http_info(format, callcredit_identity_check, opts)
      return data
    end

    # Identity check
    # Perform an identity check against an individual in the UK, powered by Callcredit data.
    # @param format Response format. Currently, only supported option is json.
    # @param callcredit_identity_check Details about an individual and their address to conduct an identity check.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallcreditIdentityCheckResponse, Fixnum, Hash)>] CallcreditIdentityCheckResponse data, response status code and response headers
    def callcredit_identity_check_format_post_with_http_info(format, callcredit_identity_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ComplianceApi.callcredit_identity_check_format_post ..."
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling ComplianceApi.callcredit_identity_check_format_post"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['json'].include?(format)
        fail ArgumentError, "invalid value for 'format', must be one of json"
      end
      # verify the required parameter 'callcredit_identity_check' is set
      if @api_client.config.client_side_validation && callcredit_identity_check.nil?
        fail ArgumentError, "Missing the required parameter 'callcredit_identity_check' when calling ComplianceApi.callcredit_identity_check_format_post"
      end
      # resource path
      local_var_path = "/callcredit/identity-check.{format}".sub('{' + 'format' + '}', format.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(callcredit_identity_check)
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CallcreditIdentityCheckResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComplianceApi#callcredit_identity_check_format_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Company check
    # Match given inputs against registered companies in the UK and Ireland. A billable company report will be generated using the following rules:   ### Reasons for a FAIL result - Simplified company status is Closed - A current officer is disqualified - No company was matched - Company matched has no data - PEPs and sanctions check returned one or more businesses with a match score of 100  ### Possible warnings (Will not cause a FAIL) - Simplified company status is Intermediate - One or more Gazette notices were found - No shareholder information was found - No shareholder information was found for the ultimate parent - Ultimate parent is a foreign company - Annual return or confirmation statement is overdue - Accounts are overdue - A former officer is disqualified - PEPs and sanctions check returned one or more businesses with a match score at or above 80  If multiple potential matches are found, a pick list is returned with enough information to allow for a more specific subsequent request (not billable).  ### Sandbox In Sandbox environment this endpoint will generate static response from historical data of real company check reports for 7 predefined company searches. All other requests will result in report not found response (HTTP 404).    ### Example search requests - **Hsbc Holdings Plc**   ```    {     \"companyId\": \"00617987\"   }    ```    --- - **Woolworths Group Plc**   ```    {     \"companyId\": \"03855289\"   }    ```   --- - **Royal Dutch Shell Plc**   ```    {     \"companyId\": \"04366849\"   }    ```   --- - **Evi Technologies Limited**   ```    {     \"companyId\": \"04660006\"   }    ```   --- - **Duedil Limited**   ```    {     \"companyId\": \"06999618\"   }    ```   --- - **Brompton Bicycle Limited**   ```    {     \"companyId\": \"01261512\",     \"name\": \"Brompton Bicycle Limited\",     \"countryCodes\": {         \"values\": [             \"GB\"         ]     }   }    ```   --- - **Tesco name search**   ```    {     \"name\": \"tesco\",     \"countryCodes\": {         \"values\": [             \"GB\"         ]     }   }    ```   --- 
    # @param format Response format. Currently, only supported option is json.
    # @param body Company check criteria.
    # @param [Hash] opts the optional parameters
    # @return [CompanyCheckResponse]
    def duedil_company_check_format_post(format, body, opts = {})
      data, _status_code, _headers = duedil_company_check_format_post_with_http_info(format, body, opts)
      return data
    end

    # Company check
    # Match given inputs against registered companies in the UK and Ireland. A billable company report will be generated using the following rules:   ### Reasons for a FAIL result - Simplified company status is Closed - A current officer is disqualified - No company was matched - Company matched has no data - PEPs and sanctions check returned one or more businesses with a match score of 100  ### Possible warnings (Will not cause a FAIL) - Simplified company status is Intermediate - One or more Gazette notices were found - No shareholder information was found - No shareholder information was found for the ultimate parent - Ultimate parent is a foreign company - Annual return or confirmation statement is overdue - Accounts are overdue - A former officer is disqualified - PEPs and sanctions check returned one or more businesses with a match score at or above 80  If multiple potential matches are found, a pick list is returned with enough information to allow for a more specific subsequent request (not billable).  ### Sandbox In Sandbox environment this endpoint will generate static response from historical data of real company check reports for 7 predefined company searches. All other requests will result in report not found response (HTTP 404).    ### Example search requests - **Hsbc Holdings Plc**   &#x60;&#x60;&#x60;    {     \&quot;companyId\&quot;: \&quot;00617987\&quot;   }    &#x60;&#x60;&#x60;    --- - **Woolworths Group Plc**   &#x60;&#x60;&#x60;    {     \&quot;companyId\&quot;: \&quot;03855289\&quot;   }    &#x60;&#x60;&#x60;   --- - **Royal Dutch Shell Plc**   &#x60;&#x60;&#x60;    {     \&quot;companyId\&quot;: \&quot;04366849\&quot;   }    &#x60;&#x60;&#x60;   --- - **Evi Technologies Limited**   &#x60;&#x60;&#x60;    {     \&quot;companyId\&quot;: \&quot;04660006\&quot;   }    &#x60;&#x60;&#x60;   --- - **Duedil Limited**   &#x60;&#x60;&#x60;    {     \&quot;companyId\&quot;: \&quot;06999618\&quot;   }    &#x60;&#x60;&#x60;   --- - **Brompton Bicycle Limited**   &#x60;&#x60;&#x60;    {     \&quot;companyId\&quot;: \&quot;01261512\&quot;,     \&quot;name\&quot;: \&quot;Brompton Bicycle Limited\&quot;,     \&quot;countryCodes\&quot;: {         \&quot;values\&quot;: [             \&quot;GB\&quot;         ]     }   }    &#x60;&#x60;&#x60;   --- - **Tesco name search**   &#x60;&#x60;&#x60;    {     \&quot;name\&quot;: \&quot;tesco\&quot;,     \&quot;countryCodes\&quot;: {         \&quot;values\&quot;: [             \&quot;GB\&quot;         ]     }   }    &#x60;&#x60;&#x60;   --- 
    # @param format Response format. Currently, only supported option is json.
    # @param body Company check criteria.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyCheckResponse, Fixnum, Hash)>] CompanyCheckResponse data, response status code and response headers
    def duedil_company_check_format_post_with_http_info(format, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ComplianceApi.duedil_company_check_format_post ..."
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling ComplianceApi.duedil_company_check_format_post"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['json'].include?(format)
        fail ArgumentError, "invalid value for 'format', must be one of json"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ComplianceApi.duedil_company_check_format_post"
      end
      # resource path
      local_var_path = "/duedil/company-check.{format}".sub('{' + 'format' + '}', format.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyCheckResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ComplianceApi#duedil_company_check_format_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end