require 'sass'

module CloudFrontHelpers
  module Sass
    ::Sass::Script::Functions.send :include, self

    def cf_url(source)
      ::Sass::Script::String.new("url(\"#{AssetTagHelper.configuration.cloud_front_url}#{source.value}\")")
    end
  end
end