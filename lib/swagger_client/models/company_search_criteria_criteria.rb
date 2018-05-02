=begin
#DueDil API v4

#Welcome to the DueDil API v4, which provides programmatic access to DueDil's comprehensive company data. It can be used to enhance a wide variety of business functions, from auto-populating website forms to verifying customer credentials.  ### Getting started In order to make requests, you'll need to obtain an API key. Please visit https://www.duedil.com/api for more information. Once you have an API key, requests can be made using a UI such as [Postman](https://www.getpostman.com/) or via a terminal using [curl](https://curl.haxx.se/docs/manual.html). An example curl request should look as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/gb/06999618.json' ```  ### Generating clients  This API has been authored using the [OpenAPI](https://en.wikipedia.org/wiki/OpenAPI_Specification) (Swagger) specification. Being machine readable, it can be used to generate V4 API clients in a range of languages. To create a client:   * Open the [Swagger Editor](http://editor.swagger.io/).  * Select 'File', 'Import URL' then enter https://duedil.io/v4/swagger.json  * Select 'Generate Client' then choose from over 30 languages such as PHP, Python and Java.  ### International data  DueDil provides a wide range of data spanning across multiple geographic regions. Our international package currently includes company information from the following countries:  | Country              |    | Country       |    | |----------------------|----|---------------|----| | Albania              | AL | Jersey        | JE | | Bahamas              | BS | Latvia        | LV | | Belgium              | BE | Liechtenstein | LI | | Bermuda              | BM | Luxembourg    | LU | | Hong Kong, SAR China | HK | Malta         | MT | | Cyprus               | CY | Montenegro    | ME | | Denmark              | DK | Netherlands   | NL | | Finland              | FI | Norway        | NO | | France               | FR | Poland        | PL | | Germany              | DE | Romania       | RO | | Greenland            | GL | Slovakia      | SK | | Guernsey             | GG | Slovenia      | SI | | Iceland              | IS | Sweden        | SE | | Isle of Man          | IM | Switzerland   | CH | | Israel               | IL |               |    |  Retrieving international data is simple. Construct your request with the corresponding country code. For the German company [Daimler AG](https://www.duedil.com/company/de/Stuttgart%20HRB%2019360/daimler-ag) you should construct your request URI as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/de/Stuttgart%20HRB%2019360.json' ```  For Companies search, the country code should be included in the post body:  ``` {     \"criteria\": {         \"name\": \"Daimler AG\",         \"countryCodes\": {             \"values\": [\"DE\", \"FR\"]         }     } } ```  **Note:** You will need to have international access added to your plan to search for and retrieve information for companies outside of the United Kingdom (GB) and Ireland (IE).  #### Data coverage  While 100% coverage is our goal, this is not feasible for every international country at present. If we cannot find the entity you are requesting, the API will return HTTP 404 with message “Resource not found”. Partial responses can include null fields where specific data is unavailable.  ### Pagination  All endpoints that return collections can be paginated in the same way through two optional parameters (`limit` and `offset`). The `offset` parameter determines the 0-based index of the first element of the collection to be returned, which defaults to 0. The `limit` parameter sets the maximum number of items from the collection to be returned, which defaults to 10. The maximum allowed limit parameter is 50.  **Note:** API keys issued for evaluation purposes will have limited access to the first 10 search results only. Other non-search endpoints do not apply this constraint.   Every response from a paginated endpoint contains a top-level property called `pagination`, which in turn contains the `offset` and `limit` values used in the API call, as well as the `total` number of items in the collection. For instance:   ``` \"pagination\": {   \"offset\": 0,   \"limit\": 10,   \"total\": 12 } ```   In the example above, an API call with `offset` = 10 and `limit` = 10 would return the 11th and 12th items in the collection, whereas an API call with `offset` = 20 and `limit` = 10 would return a successful response (200 HTTP code) with an empty collection. Calls with invalid `offset`/`limit` parameters, such as negative values, return an error (400 HTTP code). 

OpenAPI spec version: 4.4.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class CompanySearchCriteriaCriteria
    # Registered company name
    attr_accessor :name

    # List of company country codes
    attr_accessor :country_codes

    # List of company simplified statuses
    attr_accessor :simplified_statuses

    # List of regions
    attr_accessor :regions

    # List of company domain names
    attr_accessor :domain_names

    # List of company keywords
    attr_accessor :keywords

    # List of company industries
    attr_accessor :industries

    attr_accessor :incorporated

    # Range of employee values
    attr_accessor :employees_value

    # Range of employee delta percentages
    attr_accessor :employees_delta_percentage

    # Range of turnover value
    attr_accessor :turnover_value

    # Range of turnover delta percentages
    attr_accessor :turnover_delta_percentage

    # Range of ebidta values
    attr_accessor :ebitda_value

    # Range of ebidta delta percentages
    attr_accessor :ebitda_delta_percentage

    # Range of net asset values
    attr_accessor :net_assets_value

    # Range of net asset delta percentages
    attr_accessor :net_assets_delta_percentage

    # Range of total asset values
    attr_accessor :total_assets_value

    # Range of total asset delta percentages
    attr_accessor :total_assets_delta_percentage

    # Range of post tax profit values
    attr_accessor :post_tax_profit_value

    # Range of post tax profit delta percentages
    attr_accessor :post_tax_profit_delta_percentage


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'country_codes' => :'countryCodes',
        :'simplified_statuses' => :'simplifiedStatuses',
        :'regions' => :'regions',
        :'domain_names' => :'domainNames',
        :'keywords' => :'keywords',
        :'industries' => :'industries',
        :'incorporated' => :'incorporated',
        :'employees_value' => :'employeesValue',
        :'employees_delta_percentage' => :'employeesDeltaPercentage',
        :'turnover_value' => :'turnoverValue',
        :'turnover_delta_percentage' => :'turnoverDeltaPercentage',
        :'ebitda_value' => :'ebitdaValue',
        :'ebitda_delta_percentage' => :'ebitdaDeltaPercentage',
        :'net_assets_value' => :'netAssetsValue',
        :'net_assets_delta_percentage' => :'netAssetsDeltaPercentage',
        :'total_assets_value' => :'totalAssetsValue',
        :'total_assets_delta_percentage' => :'totalAssetsDeltaPercentage',
        :'post_tax_profit_value' => :'postTaxProfitValue',
        :'post_tax_profit_delta_percentage' => :'postTaxProfitDeltaPercentage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'country_codes' => :'Object',
        :'simplified_statuses' => :'Object',
        :'regions' => :'Object',
        :'domain_names' => :'Object',
        :'keywords' => :'Object',
        :'industries' => :'Object',
        :'incorporated' => :'CompanySearchCriteriaCriteriaIncorporated',
        :'employees_value' => :'Object',
        :'employees_delta_percentage' => :'Object',
        :'turnover_value' => :'Object',
        :'turnover_delta_percentage' => :'Object',
        :'ebitda_value' => :'Object',
        :'ebitda_delta_percentage' => :'Object',
        :'net_assets_value' => :'Object',
        :'net_assets_delta_percentage' => :'Object',
        :'total_assets_value' => :'Object',
        :'total_assets_delta_percentage' => :'Object',
        :'post_tax_profit_value' => :'Object',
        :'post_tax_profit_delta_percentage' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'countryCodes')
        self.country_codes = attributes[:'countryCodes']
      end

      if attributes.has_key?(:'simplifiedStatuses')
        self.simplified_statuses = attributes[:'simplifiedStatuses']
      end

      if attributes.has_key?(:'regions')
        self.regions = attributes[:'regions']
      end

      if attributes.has_key?(:'domainNames')
        self.domain_names = attributes[:'domainNames']
      end

      if attributes.has_key?(:'keywords')
        self.keywords = attributes[:'keywords']
      end

      if attributes.has_key?(:'industries')
        self.industries = attributes[:'industries']
      end

      if attributes.has_key?(:'incorporated')
        self.incorporated = attributes[:'incorporated']
      end

      if attributes.has_key?(:'employeesValue')
        self.employees_value = attributes[:'employeesValue']
      end

      if attributes.has_key?(:'employeesDeltaPercentage')
        self.employees_delta_percentage = attributes[:'employeesDeltaPercentage']
      end

      if attributes.has_key?(:'turnoverValue')
        self.turnover_value = attributes[:'turnoverValue']
      end

      if attributes.has_key?(:'turnoverDeltaPercentage')
        self.turnover_delta_percentage = attributes[:'turnoverDeltaPercentage']
      end

      if attributes.has_key?(:'ebitdaValue')
        self.ebitda_value = attributes[:'ebitdaValue']
      end

      if attributes.has_key?(:'ebitdaDeltaPercentage')
        self.ebitda_delta_percentage = attributes[:'ebitdaDeltaPercentage']
      end

      if attributes.has_key?(:'netAssetsValue')
        self.net_assets_value = attributes[:'netAssetsValue']
      end

      if attributes.has_key?(:'netAssetsDeltaPercentage')
        self.net_assets_delta_percentage = attributes[:'netAssetsDeltaPercentage']
      end

      if attributes.has_key?(:'totalAssetsValue')
        self.total_assets_value = attributes[:'totalAssetsValue']
      end

      if attributes.has_key?(:'totalAssetsDeltaPercentage')
        self.total_assets_delta_percentage = attributes[:'totalAssetsDeltaPercentage']
      end

      if attributes.has_key?(:'postTaxProfitValue')
        self.post_tax_profit_value = attributes[:'postTaxProfitValue']
      end

      if attributes.has_key?(:'postTaxProfitDeltaPercentage')
        self.post_tax_profit_delta_percentage = attributes[:'postTaxProfitDeltaPercentage']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          country_codes == o.country_codes &&
          simplified_statuses == o.simplified_statuses &&
          regions == o.regions &&
          domain_names == o.domain_names &&
          keywords == o.keywords &&
          industries == o.industries &&
          incorporated == o.incorporated &&
          employees_value == o.employees_value &&
          employees_delta_percentage == o.employees_delta_percentage &&
          turnover_value == o.turnover_value &&
          turnover_delta_percentage == o.turnover_delta_percentage &&
          ebitda_value == o.ebitda_value &&
          ebitda_delta_percentage == o.ebitda_delta_percentage &&
          net_assets_value == o.net_assets_value &&
          net_assets_delta_percentage == o.net_assets_delta_percentage &&
          total_assets_value == o.total_assets_value &&
          total_assets_delta_percentage == o.total_assets_delta_percentage &&
          post_tax_profit_value == o.post_tax_profit_value &&
          post_tax_profit_delta_percentage == o.post_tax_profit_delta_percentage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, country_codes, simplified_statuses, regions, domain_names, keywords, industries, incorporated, employees_value, employees_delta_percentage, turnover_value, turnover_delta_percentage, ebitda_value, ebitda_delta_percentage, net_assets_value, net_assets_delta_percentage, total_assets_value, total_assets_delta_percentage, post_tax_profit_value, post_tax_profit_delta_percentage].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
