require 'spec_helper'

describe AssetTagHelper do
  describe "configuration" do
    it 'should initialize itself with a bad key' do
      AssetTagHelper.configuration.should == "BAD_KEY"
    end
  end

  describe '#javascript_helper' do
    it "should be able to call a cf_javascript_include_tag and spit out CDN resources" do
      helper.should_receive(:javascript_include_tag).once
      helper.cf_javascript_include_tag
    end
  end
end