require 'rubygems'
require "bundler/setup"
require 'faraday'
require 'faraday_middleware'
require 'logger'
require 'addressable/uri'

=begin
please add the protocol and endpoint and params if any

if there are errors you can check the log
=end

URLS_TO_CHECK = ["http://www.railsfactory.com","http://tickets.railsfactory.com","http://blog.railsfactory.com","http://www.railsfactory.com/contact","http://nonexistant.railsfactory.com","http://tickets.railsfactory.com:3000","https://tickets.railsfactory.com"]

URLS_TO_CHECK.each do |uri_with_endpoint|

  begin
  Addressable::URI.parse(uri_with_endpoint)
  rescue Addressable::URI::InvalidURIError
  puts "invalid url: "  + uri_with_endpoint
  end

begin
conn = Faraday.new do |c|
  c.use Faraday::Response::Logger,          Logger.new('url_test.log')
  c.use FaradayMiddleware::FollowRedirects, limit: 3
  c.use Faraday::Response::RaiseError       # raise exceptions on 40x, 50x responses
  c.use Faraday::Adapter::NetHttp
end


response = conn.get uri_with_endpoint

puts "valid url: " + uri_with_endpoint if response.status == 200

rescue Exception => e #Faraday::Error::ConnectionFailed => e
puts "got exception: " + uri_with_endpoint + " " + e.to_s

end


end