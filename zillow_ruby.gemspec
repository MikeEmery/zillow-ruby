# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zillow_ruby/version"

Gem::Specification.new do |s|
  s.name        = "zillow_ruby"
  s.version     = ZillowRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mike Emery"]
  s.email       = ["philodoxx@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A thin wrapper around the Zillow API.}
  s.description = %q{A thin wrapper around the Zillow API.  Currently only supports retrieving mortgage rates.}

  s.rubyforge_project = "zillow_ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
