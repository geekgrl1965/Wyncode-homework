require "httparty"
require 'nokogiri'

url = "https://miami.craigslist.org/search/sof"

response = HTTParty.get url
# puts response.body

puts response.headers['content-type']

dom = Nokogiri::HTML(response.body)
puts dom.class

puts dom.css('*').size
puts dom.css('a').size
puts dom.css('a.hdrlnk').size
puts dom.css('a.hdrlnk').class

job_titles = dom.css('a.hdrlnk').map do |element|
  puts element.content
end

puts job_titles
