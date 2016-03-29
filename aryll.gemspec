# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aryll/version'

Gem::Specification.new do |s|
  s.name          = "aryll"
  s.version       = Aryll::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Wolfgang Vogl", "Carsten Zimmermann", "Matthias Viehweger"]
  s.email         = ["cz@aegisnet.de"]
  s.homepage      = ""
  s.summary       = "A simple library to check for the well-being of an URL"
  s.description   = "A simple library to check for the well-being of an URL"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.2'

  s.add_dependency "i18n"
  s.add_dependency "simpleidn"

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest', '>= 5.0'
  s.add_development_dependency 'webmock'
end

