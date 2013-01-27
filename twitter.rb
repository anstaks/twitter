require 'open-uri'
require 'json'
uri = URI.parse("http://search.twitter.com/search.json?q=%23ror&rpp=20")
json = uri.open.read
parsed_json = JSON.parse(json)
parsed_json["results"].each do |twit|
  puts twit["from_user_name"]
end
