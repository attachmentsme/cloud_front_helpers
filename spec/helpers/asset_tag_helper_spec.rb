require 'spec_helper'

describe AssetTagHelper do
  describe "configuration" do
    it 'should initialize the gem from a config initializer' do
      AssetTagHelper.configuration.cloud_front_url.should == "http://cloudfront.fake.com"
    end
  end

  describe '#javascript_helper' do
    it "should replace a single source passed to javascript_include_tag with a path pointing to CDN" do
      helper.cf_javascript_include_tag("banana.js").should == "<script src=\"http://cloudfront.fake.com/javascripts/banana.js\"></script>"
    end

    it "should replace multiple sources passed to javascript_include_tag with paths pointing to CDN" do
      helper.cf_javascript_include_tag("taco.js", "burrito.js").should == "<script src=\"http://cloudfront.fake.com/javascripts/taco.js\"></script>\n<script src=\"http://cloudfront.fake.com/javascripts/burrito.js\"></script>"
    end

    it "should pass options hash along to underlying javascript_include_tag method" do
      helper.cf_javascript_include_tag("taco.js", "burrito.js", alt: 'test').should == "<script alt=\"test\" src=\"http://cloudfront.fake.com/javascripts/taco.js\"></script>\n<script alt=\"test\" src=\"http://cloudfront.fake.com/javascripts/burrito.js\"></script>"
    end
  end

  describe '#image_tag' do
    it "should replace an image's path with a path to the CDN" do
      helper.cf_image_tag("banana.jpg").should == "<img alt=\"Banana\" src=\"http://cloudfront.fake.com/images/banana.jpg\" />"
    end
  end

  describe "#stylesheet_link_tag" do
    it "should replace a single stylesheet's path with a path to the cdn" do
      helper.cf_stylesheet_link_tag("some_style.css").should == "<link href=\"http://cloudfront.fake.com/stylesheets/some_style.css\" media=\"screen\" rel=\"stylesheet\" />"
    end

    it "should replace multiple stylesheet's path with a path to the cdn" do
      helper.cf_stylesheet_link_tag("style1.css", "style2.css").should == "<link href=\"http://cloudfront.fake.com/stylesheets/style1.css\" media=\"screen\" rel=\"stylesheet\" />\n<link href=\"http://cloudfront.fake.com/stylesheets/style2.css\" media=\"screen\" rel=\"stylesheet\" />"
    end
  end
end