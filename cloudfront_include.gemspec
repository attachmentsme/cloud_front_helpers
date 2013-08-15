# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloudfront_include/version'

Gem::Specification.new do |spec|
  spec.name          = "cloudfront_include"
  spec.version       = CloudfrontInclude::VERSION
  spec.authors       = ["Dan Reed", "Ben Coe", "Larry Kang"]
  spec.email         = ["dan@attachments.me"]
  spec.description   = %q{This gem extends ActionView::Helpers::AssetHelper to give include tags for cloudfront assets}
  spec.summary       = %q{By including this gem in your project, you can set up assets to load through cloudfront easily without manually adding the cloudfront URL to your stylesheets,scripts and images.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
