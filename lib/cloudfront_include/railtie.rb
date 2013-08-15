module CloudfrontInclude
  class Railtie < Rails::Railtie
    ActionView::Base.send :include, AssetHelperExtensions
  end
end