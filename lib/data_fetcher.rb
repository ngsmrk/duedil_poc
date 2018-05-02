require 'swagger_client'
require 'csv'

class DataFetcher
  def initialize
    SwaggerClient.configure do |config|
      config.api_key['X-AUTH-TOKEN'] = '<API key here>'
    end
  end

  def run(company_name)
    data = find_companies_data company_name
    CSV.open("data_#{Time.now}.csv", "wb") do |csv|
      csv.add_row ['company name','company type','incorporation date','registered address','number of employees','turnover','industry name', 'industry code','industry keywords', 'officers', 'officer disqualifications']
      data.each do |row|
        p row
        csv.add_row row
      end
    end
  end

  def find_companies_data(company_name)
    find_company_data(company_name)
  end

  def find_company_data(name)
    scc ||= SwaggerClient::CompanySearchCriteriaCriteria.new
    scc.name = name

    body = SwaggerClient::CompanySearchCriteria.new
    body.criteria = scc

    opts = {
      offset: 0, # Integer | Determines the 0-based index of the first element of the collection to be returned
      limit: 10, # Integer | Configures the maximum number of items from the collection to be returned in the given API call
    }

    @api_instance ||= SwaggerClient::SearchApi.new

    @essentials_api_instance ||= SwaggerClient::EssentialsApi.new

    format = 'json'

    results = []

    result = @api_instance.search_companies_format_post(format, body, opts)
    result.companies.each do |company|
      country_code = company.country_code.downcase
      company_id = company.company_id

      company_response = @essentials_api_instance.company_country_code_company_id_format_get(country_code, company_id, format)

      output = [name, company_response.type, company_response.incorporation_date, company_response.registered_address&.full_address, company_response.number_of_employees, company_response.financial_summary.turnover]

      industry_response = @essentials_api_instance.company_country_code_company_id_industries_format_get(country_code, company_id, format, opts)
      output << industry_response.industries.map(&:name).join('-')
      output << industry_response.industries.map(&:code).join('-')

      company_keywords_response = @essentials_api_instance.company_country_code_company_id_keywords_format_get(country_code, company_id, format, opts)
      output << company_keywords_response.keywords.map(&:keyword).join('-')

      company_officers_response = @essentials_api_instance.company_country_code_company_id_officers_format_get(country_code, company_id, format, opts)
      officer_info = company_officers_response.officers.map { | officer | [officer.type, "#{officer.person.first_name} #{officer.person.last_name}"].join('-') }.flatten
      office_dq_info = company_officers_response.officers.map { | officer | officer.disqualifications.map { | dq | ["#{officer.person.first_name} #{officer.person.last_name}", dq.legislation.act, dq.start_date, dq.end_date].join('-') } }.flatten

      output << officer_info
      output << office_dq_info

      results << output
    end

    results
  end
end
