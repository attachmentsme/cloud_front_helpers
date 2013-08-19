module CloudFrontHelpers
  module Rails
    module Engine < ::Rails::Engine
      initializer "rails-cloud_front_helpers.helpers" do
        ActionVeiw::Base.send :include, CloudFrontHelpers::Helpers::JavascriptIncludeTag
      end
    end
  end
end