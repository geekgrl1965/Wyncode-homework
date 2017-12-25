class UrlParser
  def initialize(url)
    @url = url
  end

  def scheme
    @url.split(":").first
  end

  def domain
    @url.split(":")[1].split("/")[2]  #ends at 2nd : and starts at 2nd /
  end

  def port
    puts port_number = @url.split('/')[2].split(":").last
      if port_number.length > 2 && scheme == "http"
       return "80"
     elsif port_number.length > 2  && scheme == "https"
        return "443"
     else
        return port_number
    end
  end

  def path
    the_path = @url.split('/').last.split("?").first #starts at 3rd / and ends at first ?
    if the_path.empty?
       return nil
    end
    the_path
  end

  def query_string
    qstring = @url.split("?").last.split('#').first
    qstring = qstring.split('&')
    answer = {}
    qstring.each do |pair|
      pair_array = pair.split("=")
      answer[pair_array[0]] = pair_array[1]
    end
    answer
  end

  def fragment_id
  @url.split('#').last
  end

end
puts UrlParser.new("http://www.google.com:60/search?q=cat&name=Tim#img=FunnyCat").port
