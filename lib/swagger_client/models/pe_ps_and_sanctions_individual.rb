=begin
#DueDil API v4

#Welcome to the DueDil API v4, which provides programmatic access to DueDil's comprehensive company data. It can be used to enhance a wide variety of business functions, from auto-populating website forms to verifying customer credentials.  ### Getting started In order to make requests, you'll need to obtain an API key. Please visit https://www.duedil.com/api for more information. Once you have an API key, requests can be made using a UI such as [Postman](https://www.getpostman.com/) or via a terminal using [curl](https://curl.haxx.se/docs/manual.html). An example curl request should look as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/gb/06999618.json' ```  ### Generating clients  This API has been authored using the [OpenAPI](https://en.wikipedia.org/wiki/OpenAPI_Specification) (Swagger) specification. Being machine readable, it can be used to generate V4 API clients in a range of languages. To create a client:   * Open the [Swagger Editor](http://editor.swagger.io/).  * Select 'File', 'Import URL' then enter https://duedil.io/v4/swagger.json  * Select 'Generate Client' then choose from over 30 languages such as PHP, Python and Java.  ### International data  DueDil provides a wide range of data spanning across multiple geographic regions. Our international package currently includes company information from the following countries:  | Country              |    | Country       |    | |----------------------|----|---------------|----| | Albania              | AL | Jersey        | JE | | Bahamas              | BS | Latvia        | LV | | Belgium              | BE | Liechtenstein | LI | | Bermuda              | BM | Luxembourg    | LU | | Hong Kong, SAR China | HK | Malta         | MT | | Cyprus               | CY | Montenegro    | ME | | Denmark              | DK | Netherlands   | NL | | Finland              | FI | Norway        | NO | | France               | FR | Poland        | PL | | Germany              | DE | Romania       | RO | | Greenland            | GL | Slovakia      | SK | | Guernsey             | GG | Slovenia      | SI | | Iceland              | IS | Sweden        | SE | | Isle of Man          | IM | Switzerland   | CH | | Israel               | IL |               |    |  Retrieving international data is simple. Construct your request with the corresponding country code. For the German company [Daimler AG](https://www.duedil.com/company/de/Stuttgart%20HRB%2019360/daimler-ag) you should construct your request URI as follows:  ``` curl -X GET --header 'Accept: application/json' --header 'X-AUTH-TOKEN: api_key' 'https://duedil.io/v4/company/de/Stuttgart%20HRB%2019360.json' ```  For Companies search, the country code should be included in the post body:  ``` {     \"criteria\": {         \"name\": \"Daimler AG\",         \"countryCodes\": {             \"values\": [\"DE\", \"FR\"]         }     } } ```  **Note:** You will need to have international access added to your plan to search for and retrieve information for companies outside of the United Kingdom (GB) and Ireland (IE).  #### Data coverage  While 100% coverage is our goal, this is not feasible for every international country at present. If we cannot find the entity you are requesting, the API will return HTTP 404 with message “Resource not found”. Partial responses can include null fields where specific data is unavailable.  ### Pagination  All endpoints that return collections can be paginated in the same way through two optional parameters (`limit` and `offset`). The `offset` parameter determines the 0-based index of the first element of the collection to be returned, which defaults to 0. The `limit` parameter sets the maximum number of items from the collection to be returned, which defaults to 10. The maximum allowed limit parameter is 50.  **Note:** API keys issued for evaluation purposes will have limited access to the first 10 search results only. Other non-search endpoints do not apply this constraint.   Every response from a paginated endpoint contains a top-level property called `pagination`, which in turn contains the `offset` and `limit` values used in the API call, as well as the `total` number of items in the collection. For instance:   ``` \"pagination\": {   \"offset\": 0,   \"limit\": 10,   \"total\": 12 } ```   In the example above, an API call with `offset` = 10 and `limit` = 10 would return the 11th and 12th items in the collection, whereas an API call with `offset` = 20 and `limit` = 10 would return a successful response (200 HTTP code) with an empty collection. Calls with invalid `offset`/`limit` parameters, such as negative values, return an error (400 HTTP code). 

OpenAPI spec version: 4.4.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class PEPsAndSanctionsIndividual
    attr_accessor :lookup_id

    attr_accessor :honorific

    attr_accessor :alternative_honorific

    attr_accessor :first_name

    attr_accessor :middle_name

    attr_accessor :last_name

    attr_accessor :nationalities

    attr_accessor :gender

    attr_accessor :image_url

    attr_accessor :pep_level

    attr_accessor :date_of_birth

    attr_accessor :is_deceased

    attr_accessor :date_of_death

    attr_accessor :aliases

    attr_accessor :telephone

    attr_accessor :fax

    attr_accessor :mobile

    attr_accessor :email

    attr_accessor :addresses

    attr_accessor :global_datasets

    attr_accessor :documents

    attr_accessor :sanctions

    attr_accessor :notes

    attr_accessor :linked_businesses

    attr_accessor :linked_individuals

    attr_accessor :political_positions


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lookup_id' => :'lookupId',
        :'honorific' => :'honorific',
        :'alternative_honorific' => :'alternativeHonorific',
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'nationalities' => :'nationalities',
        :'gender' => :'gender',
        :'image_url' => :'imageUrl',
        :'pep_level' => :'pepLevel',
        :'date_of_birth' => :'dateOfBirth',
        :'is_deceased' => :'isDeceased',
        :'date_of_death' => :'dateOfDeath',
        :'aliases' => :'aliases',
        :'telephone' => :'telephone',
        :'fax' => :'fax',
        :'mobile' => :'mobile',
        :'email' => :'email',
        :'addresses' => :'addresses',
        :'global_datasets' => :'globalDatasets',
        :'documents' => :'documents',
        :'sanctions' => :'sanctions',
        :'notes' => :'notes',
        :'linked_businesses' => :'linkedBusinesses',
        :'linked_individuals' => :'linkedIndividuals',
        :'political_positions' => :'politicalPositions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'lookup_id' => :'String',
        :'honorific' => :'String',
        :'alternative_honorific' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'nationalities' => :'Array<PEPsAndSanctionsNationality>',
        :'gender' => :'String',
        :'image_url' => :'String',
        :'pep_level' => :'Integer',
        :'date_of_birth' => :'PEPsAndSanctionsDate',
        :'is_deceased' => :'BOOLEAN',
        :'date_of_death' => :'PEPsAndSanctionsDate',
        :'aliases' => :'Array<PEPsAndSanctionsIndividualAliases>',
        :'telephone' => :'String',
        :'fax' => :'String',
        :'mobile' => :'String',
        :'email' => :'String',
        :'addresses' => :'Array<PEPsAndSanctionsAddress>',
        :'global_datasets' => :'PEPsAndSanctionsDatasetSummary',
        :'documents' => :'Array<PEPsAndSanctionsDocument>',
        :'sanctions' => :'Array<PEPsAndSanctionsSanction>',
        :'notes' => :'Array<PEPsAndSanctionsNote>',
        :'linked_businesses' => :'Array<PEPsAndSanctionsBusinessLinkedToIndividual>',
        :'linked_individuals' => :'Array<PEPsAndSanctionsIndividualLinkedToIndividual>',
        :'political_positions' => :'Array<PEPsAndSanctionsPoliticalPosition>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'lookupId')
        self.lookup_id = attributes[:'lookupId']
      end

      if attributes.has_key?(:'honorific')
        self.honorific = attributes[:'honorific']
      end

      if attributes.has_key?(:'alternativeHonorific')
        self.alternative_honorific = attributes[:'alternativeHonorific']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'nationalities')
        if (value = attributes[:'nationalities']).is_a?(Array)
          self.nationalities = value
        end
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'imageUrl')
        self.image_url = attributes[:'imageUrl']
      end

      if attributes.has_key?(:'pepLevel')
        self.pep_level = attributes[:'pepLevel']
      end

      if attributes.has_key?(:'dateOfBirth')
        self.date_of_birth = attributes[:'dateOfBirth']
      end

      if attributes.has_key?(:'isDeceased')
        self.is_deceased = attributes[:'isDeceased']
      end

      if attributes.has_key?(:'dateOfDeath')
        self.date_of_death = attributes[:'dateOfDeath']
      end

      if attributes.has_key?(:'aliases')
        if (value = attributes[:'aliases']).is_a?(Array)
          self.aliases = value
        end
      end

      if attributes.has_key?(:'telephone')
        self.telephone = attributes[:'telephone']
      end

      if attributes.has_key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.has_key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.has_key?(:'globalDatasets')
        self.global_datasets = attributes[:'globalDatasets']
      end

      if attributes.has_key?(:'documents')
        if (value = attributes[:'documents']).is_a?(Array)
          self.documents = value
        end
      end

      if attributes.has_key?(:'sanctions')
        if (value = attributes[:'sanctions']).is_a?(Array)
          self.sanctions = value
        end
      end

      if attributes.has_key?(:'notes')
        if (value = attributes[:'notes']).is_a?(Array)
          self.notes = value
        end
      end

      if attributes.has_key?(:'linkedBusinesses')
        if (value = attributes[:'linkedBusinesses']).is_a?(Array)
          self.linked_businesses = value
        end
      end

      if attributes.has_key?(:'linkedIndividuals')
        if (value = attributes[:'linkedIndividuals']).is_a?(Array)
          self.linked_individuals = value
        end
      end

      if attributes.has_key?(:'politicalPositions')
        if (value = attributes[:'politicalPositions']).is_a?(Array)
          self.political_positions = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @lookup_id.nil?
        invalid_properties.push("invalid value for 'lookup_id', lookup_id cannot be nil.")
      end

      if @honorific.nil?
        invalid_properties.push("invalid value for 'honorific', honorific cannot be nil.")
      end

      if @alternative_honorific.nil?
        invalid_properties.push("invalid value for 'alternative_honorific', alternative_honorific cannot be nil.")
      end

      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @middle_name.nil?
        invalid_properties.push("invalid value for 'middle_name', middle_name cannot be nil.")
      end

      if @last_name.nil?
        invalid_properties.push("invalid value for 'last_name', last_name cannot be nil.")
      end

      if @nationalities.nil?
        invalid_properties.push("invalid value for 'nationalities', nationalities cannot be nil.")
      end

      if @gender.nil?
        invalid_properties.push("invalid value for 'gender', gender cannot be nil.")
      end

      if @image_url.nil?
        invalid_properties.push("invalid value for 'image_url', image_url cannot be nil.")
      end

      if @pep_level.nil?
        invalid_properties.push("invalid value for 'pep_level', pep_level cannot be nil.")
      end

      if @date_of_birth.nil?
        invalid_properties.push("invalid value for 'date_of_birth', date_of_birth cannot be nil.")
      end

      if @is_deceased.nil?
        invalid_properties.push("invalid value for 'is_deceased', is_deceased cannot be nil.")
      end

      if @date_of_death.nil?
        invalid_properties.push("invalid value for 'date_of_death', date_of_death cannot be nil.")
      end

      if @aliases.nil?
        invalid_properties.push("invalid value for 'aliases', aliases cannot be nil.")
      end

      if @telephone.nil?
        invalid_properties.push("invalid value for 'telephone', telephone cannot be nil.")
      end

      if @fax.nil?
        invalid_properties.push("invalid value for 'fax', fax cannot be nil.")
      end

      if @mobile.nil?
        invalid_properties.push("invalid value for 'mobile', mobile cannot be nil.")
      end

      if @email.nil?
        invalid_properties.push("invalid value for 'email', email cannot be nil.")
      end

      if @addresses.nil?
        invalid_properties.push("invalid value for 'addresses', addresses cannot be nil.")
      end

      if @global_datasets.nil?
        invalid_properties.push("invalid value for 'global_datasets', global_datasets cannot be nil.")
      end

      if @documents.nil?
        invalid_properties.push("invalid value for 'documents', documents cannot be nil.")
      end

      if @sanctions.nil?
        invalid_properties.push("invalid value for 'sanctions', sanctions cannot be nil.")
      end

      if @notes.nil?
        invalid_properties.push("invalid value for 'notes', notes cannot be nil.")
      end

      if @linked_businesses.nil?
        invalid_properties.push("invalid value for 'linked_businesses', linked_businesses cannot be nil.")
      end

      if @linked_individuals.nil?
        invalid_properties.push("invalid value for 'linked_individuals', linked_individuals cannot be nil.")
      end

      if @political_positions.nil?
        invalid_properties.push("invalid value for 'political_positions', political_positions cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @lookup_id.nil?
      return false if @honorific.nil?
      return false if @alternative_honorific.nil?
      return false if @first_name.nil?
      return false if @middle_name.nil?
      return false if @last_name.nil?
      return false if @nationalities.nil?
      return false if @gender.nil?
      return false if @image_url.nil?
      return false if @pep_level.nil?
      return false if @date_of_birth.nil?
      return false if @is_deceased.nil?
      return false if @date_of_death.nil?
      return false if @aliases.nil?
      return false if @telephone.nil?
      return false if @fax.nil?
      return false if @mobile.nil?
      return false if @email.nil?
      return false if @addresses.nil?
      return false if @global_datasets.nil?
      return false if @documents.nil?
      return false if @sanctions.nil?
      return false if @notes.nil?
      return false if @linked_businesses.nil?
      return false if @linked_individuals.nil?
      return false if @political_positions.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lookup_id == o.lookup_id &&
          honorific == o.honorific &&
          alternative_honorific == o.alternative_honorific &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          nationalities == o.nationalities &&
          gender == o.gender &&
          image_url == o.image_url &&
          pep_level == o.pep_level &&
          date_of_birth == o.date_of_birth &&
          is_deceased == o.is_deceased &&
          date_of_death == o.date_of_death &&
          aliases == o.aliases &&
          telephone == o.telephone &&
          fax == o.fax &&
          mobile == o.mobile &&
          email == o.email &&
          addresses == o.addresses &&
          global_datasets == o.global_datasets &&
          documents == o.documents &&
          sanctions == o.sanctions &&
          notes == o.notes &&
          linked_businesses == o.linked_businesses &&
          linked_individuals == o.linked_individuals &&
          political_positions == o.political_positions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [lookup_id, honorific, alternative_honorific, first_name, middle_name, last_name, nationalities, gender, image_url, pep_level, date_of_birth, is_deceased, date_of_death, aliases, telephone, fax, mobile, email, addresses, global_datasets, documents, sanctions, notes, linked_businesses, linked_individuals, political_positions].hash
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
