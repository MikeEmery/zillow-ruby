
require 'zillow_ruby/configuration'
require 'zillow_ruby/mortgage'

module ZillowRuby
	extend Configuration
	extend Mortgage
	include HTTParty
end
