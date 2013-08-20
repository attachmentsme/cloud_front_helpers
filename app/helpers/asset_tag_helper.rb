module AssetTagHelper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)

    # get rid of trailing /.
    configuration.cloud_front_url = configuration.cloud_front_url.gsub(/\/$/, '')
  end

  class Configuration
    attr_accessor :cloud_front_url

    def initialize
      @cloud_front_url = '/'
    end
  end

  #actual helper code
  def cf_javascript_include_tag(*sources)
    raw javascript_include_tag(*sources).gsub(/src="\//, "src=\"#{AssetTagHelper.configuration.cloud_front_url}/")
  end

  def cf_image_tag(source, opts={})
    raw image_tag(source, opts).gsub(/src="\//, "src=\"#{AssetTagHelper.configuration.cloud_front_url}/")
  end

  def cf_stylesheet_link_tag(*sources)
    raw stylesheet_link_tag(*sources).gsub(/href="\//, "href=\"#{AssetTagHelper.configuration.cloud_front_url}/")
  end
end