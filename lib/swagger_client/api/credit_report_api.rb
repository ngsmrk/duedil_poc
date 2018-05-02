=begin
#DueDil API v4

#Welcome to the DueDil API v4, which provides programmatic access to DueDil's comprehensive company data. It can be used to enhance a wide variety of business functions, from auto-populating website forms to verifying customer credentials.  ### Getting started In order to make requests, you'll need to obtain an API key. Please visit https://www.duedil.com/api for more information. Once you have an API key, requests can be made using a UI such as [Postman](https://www.getpostman.com/) or via a terminal using [curl](https://curl.haxx.se/docs/manual.html). An example curl request should look as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/gb/06999618.json' ```  ### Generating clients  This API has been authored using the [OpenAPI](https://en.wikipedia.org/wiki/OpenAPI_Specification) (Swagger) specification. Being machine readable, it can be used to generate V4 API clients in a range of languages. To create a client:   * Open the [Swagger Editor](http://editor.swagger.io/).  * Select 'File', 'Import URL' then enter https://duedil.io/v4/swagger.json  * Select 'Generate Client' then choose from over 30 languages such as PHP, Python and Java.  ### International data  DueDil provides a wide range of data spanning across multiple geographic regions. Our international package currently includes company information from the following countries:  | Country              |    | Country       |    | |----------------------|----|---------------|----| | Albania              | AL | Jersey        | JE | | Bahamas              | BS | Latvia        | LV | | Belgium              | BE | Liechtenstein | LI | | Bermuda              | BM | Luxembourg    | LU | | Hong Kong, SAR China | HK | Malta         | MT | | Cyprus               | CY | Montenegro    | ME | | Denmark              | DK | Netherlands   | NL | | Finland              | FI | Norway        | NO | | France               | FR | Poland        | PL | | Germany              | DE | Romania       | RO | | Greenland            | GL | Slovakia      | SK | | Guernsey             | GG | Slovenia      | SI | | Iceland              | IS | Sweden        | SE | | Isle of Man          | IM | Switzerland   | CH | | Israel               | IL |               |    |  Retrieving international data is simple. Construct your request with the corresponding country code. For the German company [Daimler AG](https://www.duedil.com/company/de/Stuttgart%20HRB%2019360/daimler-ag) you should construct your request URI as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/de/Stuttgart%20HRB%2019360.json' ```  For Companies search, the country code should be included in the post body:  ``` {     \"criteria\": {         \"name\": \"Daimler AG\",         \"countryCodes\": {             \"values\": [\"DE\", \"FR\"]         }     } } ```  **Note:** You will need to have international access added to your plan to search for and retrieve information for companies outside of the United Kingdom (GB) and Ireland (IE).  #### Data coverage  While 100% coverage is our goal, this is not feasible for every international country at present. If we cannot find the entity you are requesting, the API will return HTTP 404 with message “Resource not found”. Partial responses can include null fields where specific data is unavailable.  ### Pagination  All endpoints that return collections can be paginated in the same way through two optional parameters (`limit` and `offset`). The `offset` parameter determines the 0-based index of the first element of the collection to be returned, which defaults to 0. The `limit` parameter sets the maximum number of items from the collection to be returned, which defaults to 10. The maximum allowed limit parameter is 50.  **Note:** API keys issued for evaluation purposes will have limited access to the first 10 search results only. Other non-search endpoints do not apply this constraint.   Every response from a paginated endpoint contains a top-level property called `pagination`, which in turn contains the `offset` and `limit` values used in the API call, as well as the `total` number of items in the collection. For instance:   ``` \"pagination\": {   \"offset\": 0,   \"limit\": 10,   \"total\": 12 } ```   In the example above, an API call with `offset` = 10 and `limit` = 10 would return the 11th and 12th items in the collection, whereas an API call with `offset` = 20 and `limit` = 10 would return a successful response (200 HTTP code) with an empty collection. Calls with invalid `offset`/`limit` parameters, such as negative values, return an error (400 HTTP code). 

OpenAPI spec version: 4.4.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class CreditReportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Credit report
    # Get credit report for a given company. ### Sandbox  In Sandbox environment this endpoint will generate static response from historical data of real credit reports for 7 predefined companies. All other requests will result in credit report not found response (HTTP 404).   The companies are as follows  - Bp P.L.C. - countryCode: **gb** companyId: **00102498**  - Royal Dutch Shell Plc - countryCode: **gb** companyId: **04366849**  - Hsbc Holdings Plc - countryCode: **gb** companyId: **00617987**  - Tesco Plc - countryCode: **gb** companyId: **00445790**  - Vodafone Group Public Limited Company - countryCode: **gb** companyId: **01833679**  - Woolworths Group PLC - countryCode: **gb** companyId: **03855289**  - Brompton Bicycle Limited - countryCode: **gb** companyId: **01261512** 
    # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
    # @param company_id Company registration number
    # @param format Response format. Currently, only supported option is json.
    # @param [Hash] opts the optional parameters
    # @return [CompanyCreditReportResponse]
    def company_country_code_company_id_credit_report_format_get(country_code, company_id, format, opts = {})
      data, _status_code, _headers = company_country_code_company_id_credit_report_format_get_with_http_info(country_code, company_id, format, opts)
      return data
    end

    # Credit report
    # Get credit report for a given company. ### Sandbox  In Sandbox environment this endpoint will generate static response from historical data of real credit reports for 7 predefined companies. All other requests will result in credit report not found response (HTTP 404).   The companies are as follows  - Bp P.L.C. - countryCode: **gb** companyId: **00102498**  - Royal Dutch Shell Plc - countryCode: **gb** companyId: **04366849**  - Hsbc Holdings Plc - countryCode: **gb** companyId: **00617987**  - Tesco Plc - countryCode: **gb** companyId: **00445790**  - Vodafone Group Public Limited Company - countryCode: **gb** companyId: **01833679**  - Woolworths Group PLC - countryCode: **gb** companyId: **03855289**  - Brompton Bicycle Limited - countryCode: **gb** companyId: **01261512** 
    # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
    # @param company_id Company registration number
    # @param format Response format. Currently, only supported option is json.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyCreditReportResponse, Fixnum, Hash)>] CompanyCreditReportResponse data, response status code and response headers
    def company_country_code_company_id_credit_report_format_get_with_http_info(country_code, company_id, format, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditReportApi.company_country_code_company_id_credit_report_format_get ..."
      end
      # verify the required parameter 'country_code' is set
      if @api_client.config.client_side_validation && country_code.nil?
        fail ArgumentError, "Missing the required parameter 'country_code' when calling CreditReportApi.company_country_code_company_id_credit_report_format_get"
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CreditReportApi.company_country_code_company_id_credit_report_format_get"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling CreditReportApi.company_country_code_company_id_credit_report_format_get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['json'].include?(format)
        fail ArgumentError, "invalid value for 'format', must be one of json"
      end
      # resource path
      local_var_path = "/company/{countryCode}/{companyId}/credit-report.{format}".sub('{' + 'countryCode' + '}', country_code.to_s).sub('{' + 'companyId' + '}', company_id.to_s).sub('{' + 'format' + '}', format.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyCreditReportResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditReportApi#company_country_code_company_id_credit_report_format_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
