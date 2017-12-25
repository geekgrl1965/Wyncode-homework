require 'httparty'  #name of gem
require 'json' #allows program to parse json

data = {first_name: 'Karen', username: 'geekgrl1965'}
response = HTTParty.post 'http://requestb.in/s5j0z0s5', {body:data}

puts response.body

# response = HTTParty.get('https://api.github.com/users/eddroid')
#
# puts response.body, response.code, response.message, response.headers.inspect
# body = JSON. parse response.body
# puts "body varianble is of type #{body.class}"
# puts body['location'] #to retrieve value from hash

# puts response.headers["content-type"]
  #=>application/json; charset=utf-8
  # {"server"=>["GitHub.com"], "date"=>["Tue, 03 Oct 2017 14:24:24 GMT"],
    # "content-type"=>["application/json; charset=utf-8"],
