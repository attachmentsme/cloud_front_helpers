require 'spec_helper'

describe CloudFrontHelpers::Sass  do

  def evaluate_sass(value)
    Sass::Script::Parser.parse(value, 0, 0).perform(Sass::Environment.new).to_s
  end

  describe 'cf_url' do
    it "should take a base path in and return a path with the CDN included" do
      evaluate_sass("cf_url(\"/images/awesome.jpg\")").should == "url(\"http://cloudfront.fake.com/images/awesome.jpg\")"
    end
  end

end