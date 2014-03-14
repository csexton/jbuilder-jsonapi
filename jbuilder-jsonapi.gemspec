# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jbuilder/jsonapi/version'

Gem::Specification.new do |spec|
  spec.name          = "jbuilder-jsonapi"
  spec.version       = Jbuilder::Jsonapi::VERSION
  spec.authors       = ["Christopher Sexton", "Guille Carlos"]
  spec.email         = ["github@codeography.com", "guille@bitpop.in"]
  spec.description   = "jBuilder extensions and helpers for JSON API"
  spec.summary       = "jBuilder extensions and helpers for building JSON API documents. See http://jsonapi.org for details on the format"
  spec.homepage      = "https://github.com/csexton/jbuilder-jsonapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'jbuilder', '~> 2.0.0'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
