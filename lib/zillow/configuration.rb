module ZillowRuby
	module Configuration
		attr_accessor :host

		def configure
			yield self
		end
	end
end