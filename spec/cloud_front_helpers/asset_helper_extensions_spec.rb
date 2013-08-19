require 'spec_helper' 

module CloudFrontHelpers
  describe "#javascript_include_tag" do
    it 'should call cf_javascript_include_tag with the name of the asset passed in' do
      cf_javascript_include_tag('taco').should_return(nil)
      #ActionView::Helpers::AssetTagHelper::JavascriptIncludeTagHelpers.should_receive(:javascript_include_tag).with(anything).and_return(nil)
    end
  end
end