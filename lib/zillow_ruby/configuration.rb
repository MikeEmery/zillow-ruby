module ZillowRuby
	module Configuration
		attr_accessor :zws_id
		attr_accessor :default_interest_rate

		def configure
			yield self
		end
	end
end