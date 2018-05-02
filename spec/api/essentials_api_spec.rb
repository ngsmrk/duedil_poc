=begin
#DueDil API v4

#Welcome to the DueDil API v4, which provides programmatic access to DueDil's comprehensive company data. It can be used to enhance a wide variety of business functions, from auto-populating website forms to verifying customer credentials.  ### Getting started In order to make requests, you'll need to obtain an API key. Please visit https://www.duedil.com/api for more information. Once you have an API key, requests can be made using a UI such as [Postman](https://www.getpostman.com/) or via a terminal using [curl](https://curl.haxx.se/docs/manual.html). An example curl request should look as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/gb/06999618.json' ```  ### Generating clients  This API has been authored using the [OpenAPI](https://en.wikipedia.org/wiki/OpenAPI_Specification) (Swagger) specification. Being machine readable, it can be used to generate V4 API clients in a range of languages. To create a client:   * Open the [Swagger Editor](http://editor.swagger.io/).  * Select 'File', 'Import URL' then enter https://duedil.io/v4/swagger.json  * Select 'Generate Client' then choose from over 30 languages such as PHP, Python and Java.  ### International data  DueDil provides a wide range of data spanning across multiple geographic regions. Our international package currently includes company information from the following countries:  | Country              |    | Country       |    | |----------------------|----|---------------|----| | Albania              | AL | Jersey        | JE | | Bahamas              | BS | Latvia        | LV | | Belgium              | BE | Liechtenstein | LI | | Bermuda              | BM | Luxembourg    | LU | | Hong Kong, SAR China | HK | Malta         | MT | | Cyprus               | CY | Montenegro    | ME | | Denmark              | DK | Netherlands   | NL | | Finland              | FI | Norway        | NO | | France               | FR | Poland        | PL | | Germany              | DE | Romania       | RO | | Greenland            | GL | Slovakia      | SK | | Guernsey             | GG | Slovenia      | SI | | Iceland              | IS | Sweden        | SE | | Isle of Man          | IM | Switzerland   | CH | | Israel               | IL |               |    |  Retrieving international data is simple. Construct your request with the corresponding country code. For the German company [Daimler AG](https://www.duedil.com/company/de/Stuttgart%20HRB%2019360/daimler-ag) you should construct your request URI as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/de/Stuttgart%20HRB%2019360.json' ```  For Companies search, the country code should be included in the post body:  ``` {     \"criteria\": {         \"name\": \"Daimler AG\",         \"countryCodes\": {             \"values\": [\"DE\", \"FR\"]         }     } } ```  **Note:** You will need to have international access added to your plan to search for and retrieve information for companies outside of the United Kingdom (GB) and Ireland (IE).  #### Data coverage  While 100% coverage is our goal, this is not feasible for every international country at present. If we cannot find the entity you are requesting, the API will return HTTP 404 with message “Resource not found”. Partial responses can include null fields where specific data is unavailable.  ### Pagination  All endpoints that return collections can be paginated in the same way through two optional parameters (`limit` and `offset`). The `offset` parameter determines the 0-based index of the first element of the collection to be returned, which defaults to 0. The `limit` parameter sets the maximum number of items from the collection to be returned, which defaults to 10. The maximum allowed limit parameter is 50.  **Note:** API keys issued for evaluation purposes will have limited access to the first 10 search results only. Other non-search endpoints do not apply this constraint.   Every response from a paginated endpoint contains a top-level property called `pagination`, which in turn contains the `offset` and `limit` values used in the API call, as well as the `total` number of items in the collection. For instance:   ``` \"pagination\": {   \"offset\": 0,   \"limit\": 10,   \"total\": 12 } ```   In the example above, an API call with `offset` = 10 and `limit` = 10 would return the 11th and 12th items in the collection, whereas an API call with `offset` = 20 and `limit` = 10 would return a successful response (200 HTTP code) with an empty collection. Calls with invalid `offset`/`limit` parameters, such as negative values, return an error (400 HTTP code). 

OpenAPI spec version: 4.4.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::EssentialsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EssentialsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EssentialsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EssentialsApi' do
    it 'should create an instance of EssentialsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EssentialsApi)
    end
  end

  # unit tests for company_country_code_company_id_addresses_format_get
  # Company addresses
  # Get addresses for a given company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyAddressesResponse]
  describe 'company_country_code_company_id_addresses_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_descriptions_format_get
  # Company descriptions
  # Get descriptions for a given company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyDescriptionsResponse]
  describe 'company_country_code_company_id_descriptions_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_format_get
  # Company vitals
  # Get key information for a given company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @return [CompanyResponse]
  describe 'company_country_code_company_id_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_industries_format_get
  # Company industries
  # Get industries for a given company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @option opts [Array<String>] :types List of industry classification systems to include if available
  # @return [CompanyIndustriesResponse]
  describe 'company_country_code_company_id_industries_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_keywords_format_get
  # Company keywords
  # Get keywords associated with a given company 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyKeywordsResponse]
  describe 'company_country_code_company_id_keywords_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_officers_format_get
  # Company officers
  # Get officers and their appointments for a given company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @option opts [Array<String>] :appointment_statuses List of appointment statuses to include
  # @return [CompanyOfficersResponse]
  describe 'company_country_code_company_id_officers_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_registered_names_format_get
  # Company registered names
  # Get registered names for a company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyRegisteredNamesResponse]
  describe 'company_country_code_company_id_registered_names_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_related_names_format_get
  # Company related names
  # Get related names for a given company. 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyRelatedNamesResponse]
  describe 'company_country_code_company_id_related_names_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_social_media_profiles_format_get
  # Company social media profiles
  # Get social media profiles for a given company.
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @option opts [Array<String>] :platforms List of platforms to include
  # @return [CompanySocialMediaProfilesResponse]
  describe 'company_country_code_company_id_social_media_profiles_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_telephone_numbers_format_get
  # Company telephone numbers
  # Get telephone numbers associated with a given company 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyTelephoneNumbersResponse]
  describe 'company_country_code_company_id_telephone_numbers_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_country_code_company_id_websites_format_get
  # Company websites
  # Get websites associated with a given company 
  # @param country_code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code in lowercase.
  # @param company_id Company registration number
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @return [CompanyWebsitesResponse]
  describe 'company_country_code_company_id_websites_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for officer_officer_id_companies_format_get
  # Officer appointments
  # Get all companies and appointments for a given officer.
  # @param officer_id Officer id
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Determines the 0-based index of the first element of the collection to be returned
  # @option opts [Integer] :limit Configures the maximum number of items from the collection to be returned in the given API call
  # @option opts [Array<String>] :appointment_statuses List of appointment statuses to include
  # @return [OfficerCompaniesResponse]
  describe 'officer_officer_id_companies_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for officer_officer_id_format_get
  # Officer vitals
  # Get key information for a given officer. Note that an officer can be either a person or a company acting as a corporate officer. **WARNING: We plan to make non-backwards compatible changes to officer identifiers in the near future to accommodate data from other countries.** 
  # @param officer_id Officer id
  # @param format Response format. Currently, only supported option is json.
  # @param [Hash] opts the optional parameters
  # @return [OfficerResponse]
  describe 'officer_officer_id_format_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end