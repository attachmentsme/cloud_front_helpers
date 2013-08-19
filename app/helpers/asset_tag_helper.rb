module AssetTagHelper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :cloud_front_key

    def initialize
      @cloud_front_key = 'BAD_KEY'
    end
  end

  #actual helper code
  def cf_javascript_include_tag(*sources)
    raw_tags = javascript_include_tag(sources)
  end
end