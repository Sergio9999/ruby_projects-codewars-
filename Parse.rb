require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'

url = 'https://www.gazeta.ru'
html = open(url)

doc = Nokogiri::HTML(html)
news = doc.css('#news_lenta_intro .sausage-list-item')
date = doc.css('#news_lenta_intro a time.sausage-list-item-info')
list_news = []
list_content = []
dates = []
date.each do |date|
  dates.push(date.children.text)
end

news.each do |news|
  list_news.push(news)
  list_content.push(news.content)
end
binding.pry
puts JSON.pretty_generate(dates)
puts JSON.pretty_generate(list_content)
