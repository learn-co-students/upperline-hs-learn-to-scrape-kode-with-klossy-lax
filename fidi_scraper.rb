require 'nokogiri'
require 'open-uri'

fidi_html = open('https://s3-us-west-2.amazonaws.com/nokogiri-scrape/index.html')
#puts fidi_html

fidi_nokogiri = Nokogiri::HTML(fidi_html)
#puts fidi_nokogiri

#title = fidi_nokogiri.css(“h1”).text
#puts title

sophies = fidi_nokogiri.css("div.restaurant.r3 h2").text
#puts sophies

restaurants_names = fidi_nokogiri.css("div.restaurant h2").collect do |name|
    name.text
end
#puts restaurants_names

fidi_dining = fidi_nokogiri.css("div.header h1").text
puts fidi_dining

open_kitchen = fidi_nokogiri.css("div.restaurant.r5 h2").text
puts open_kitchen

grill_phone = fidi_nokogiri.css("div.restaurant.r1 h3").text
puts grill_phone

tgi_review = fidi_nokogiri.css("div.restaurant.r9 div.photo-desc h4").text
puts tgi_review

justinos_stars = fidi_nokogiri.css("div.restaurant.r6 p").text
puts justinos_stars

flavors_pic = fidi_nokogiri.css("div.restaurant.r7 div.photo-desc img.src").text
puts flavors_pic

restaurants = fidi_nokogiri.css("div.restaurant").collect do |name| 
    all = name.css("h2") + name.css("p") 
    all.text 
end
puts restaurants