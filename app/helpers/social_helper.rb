require 'rubygems'
require 'oauth'
require 'json'

module SocialHelper

  def set_keys
  end

  def post_function(str_post)
    baseurl = "http://api.twitter.com"
    path = "/1.1/statuses/update.json"
    address = URI("#{ baseurl }#{path}")
    request = Net::HTTP::Post.new address.request_url
    request.set_form_data(
               "status" => str_post
    )

    http = Net::HTTP.new address.host, address.port
    http.use_ssl = true

  end
end
