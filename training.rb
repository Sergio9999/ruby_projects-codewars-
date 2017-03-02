require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'json'

class Showing
  #def open_file
   
  # doc
  #end

  def parse_page
     url = 'http://www.cubecinema.com/programme'
    html = open(url)
    doc = Nokogiri::HTML(html)
    doc.css('.showing').each do |showing|
      showing_id = showing['id'].split('_').last.to_i
    end
   return showing_id
  end
end
showing = Showing.new
puts showing.parse_page