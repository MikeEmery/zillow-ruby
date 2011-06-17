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
	  @thirty_year_fixed ||= rate_summary.thirtyYearFixed
	  @thirty_year_fixed.to_f
  end
end
