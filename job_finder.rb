require "sinatra"
require "httparty" #allows you to use GET, POST, etc.
require "nokogiri" #access individual HTML tags to parse data


get '/' do
p params[:job]
url = "https://miami.craigslist.org/search/sof"
response = HTTParty.get url  #retrieves page at specified url as string

dom = Nokogiri::HTML(response.body) #only the body section of the HTML code
#dom is a variable to store the data

i =0;

job_titles = dom.css('.content').css('.result-row').css('.hdrlnk').map do |a|
  "<p>#{i+=1}.  #{a.text}:  #{a ['href']}</p>"
  end
end


#@info is a variable that takes in the dom.css data
#parses on the specified css tag
