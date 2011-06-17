module ZillowRuby
	module Mortgage
		base_uri 'http://www.zillow.com/webservice/GetRateSummary.htm'
		default_params 'zws-id' => zws_id, :output => 'json'
		
		def rate_summary
			get
		end
	end
end