#require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.930.com/concerts/"

data = Nokogiri::HTML(open(url))


#data.each do |data|
	puts data.css('.headliners').text.strip
	puts data.css('.dates').text.strip
	puts data.css('.times').text.strip
	if data.at_css('price-range').nil?
		puts data.at_css('.price-range').text.strip
	else
		puts "SOLD OUT"
	end
#end

concerts = data.css('.list-view-details')
