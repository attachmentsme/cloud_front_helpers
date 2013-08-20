# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloud_front_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "cloud_front_helpers"
  spec.version       = CloudFrontHelpers::VERSION
  spec.authors       = ["Dan Reed", "Ben Coe", "Larry Kang"]
  spec.email         = ["dan@attachments.me", "ben@attachments.me", "larry@attachments.me"]
  spec.description   = %q{provides rails view helpers for referencing a CDN (such as CloudFront) on an assets base url, on an asset by asset basis.}
  spec.summary       = %q{provides rails view helpers for referencing a CDN (such as CloudFront) on an assets base url, on an asset by asset basis. asset_host, setting can be used to set this value globally.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sass", "~> 3.2.10"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rails", "~> 4.0.0"
end
