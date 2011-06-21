require 'httparty'
require 'hashie'
require 'zillow_ruby/configuration'

module ZillowRuby
	extend Configuration
	
	include HTTParty
  
	base_uri 'http://www.zillow.com/webservice'
	default_params :output => 'json'
	
	def self.rate_summary
		response = get '/GetRateSummary.htm', :query => { 'zws-id' => zws_id }
		
		Hashie::Mash.new(response).response.today
	end
	
	def self.thirty_year_fixed
	  value = default_interest_rate
	  
	  begin
	    value = rate_summary.thirtyYearFixed.to_f
    rescue
      value = default_interest_rate
    end
    
    value
  end
end
