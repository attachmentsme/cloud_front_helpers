# Cloud Front Helpers

This gem hooks into ActionView::Helpers::AssetTagHelper and provides some asset tags that will replace a local resource with something hosted on a CDN, like Amazon's CloudFront. This is an easy way to use a CDN in your code with only minor effort on your part. Your users will see greatly reduced load time and you'll see happier users.

## Installation

Add this line to your application's Gemfile:

    gem 'cloud_front_helpers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cloud_front_helpers

## Setup

Set up an initializer at

    ./config/initializers/cloud_front_helpers.rb

This initializer should look something like:

    AssetTagHelper.configure do |config|
      config.cloud_front_url = "https://YOUR_CDN_URL.cloudfront.net" if Rails.env.production?
    end

## Usage

Once you've set up your initializer, including CDN assets has never been simpler. We've included helpers for image, styles, and scripts.
    
    <%= cf_image_tag "/images/foo.png" %>
    <%= cf_javascript_include_tag "/javascripts/spaceCats.js" %>
    <%= cf_stylesheet_link_tag "/stylesheets/bar.css" %>

In addition to these asset tag helpers, we've included a sass extension for your background and background-image tags. In any stylesheet, put something like this: 
    
    .whatever {
      background: cf_url("/path/to/some/image.jpg");
    }

And that's it! 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
