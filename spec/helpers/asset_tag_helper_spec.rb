require 'spec_helper'

describe AssetTagHelper do
  describe "configuration" do
    it 'should initialize the gem from a config initializer' do
      #YOUR_KEY_HERE is the default key that we initialize in this gem
      #but you should most definitely put your own
      AssetTagHelper.configuration.cloud_front_url.should == "YOUR_KEY_HERE"
    end
  end

  describe '#javascript_helper' do
    it "should be able to call a cf_javascript_include_tag and spit out CDN resources" do
      helper.should_receive(:javascript_include_tag).once
      helper.cf_javascript_include_tag
    end
  end
end