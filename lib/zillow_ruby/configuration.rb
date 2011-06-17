module ZillowRuby
	module Configuration
		attr_accessor :zws_id

		def configure
			yield self
		end
	end
end