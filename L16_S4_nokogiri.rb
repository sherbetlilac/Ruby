# 1. require nokogiri gem and its' dependencies

require 'nokogiri'
require 'open-uri'

#2. assign the html link to a variable

doc = Nokogiri::HTML(URI.open("https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich"))

#3. search for ingredient - element types
# if using html to search use puts doc.search('htmltype')
# if using css to search use puts doc.css('.classname')

ingredient_list = doc.css('.ingredient-label').inner_html

#4. print list
puts ingredient_list