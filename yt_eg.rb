require 'nokogiri'
require 'open-uri'

url = "http://www.930.com/concerts/"

data = Nokogiri::HTML(open(url))

data.each do |data|
	puts data.at_css('.headliners').text.
	puts data.at_css('.dates').text.
	puts data.at_css('.times').text.

	if !data.at_css('.price-range').nil?
		puts data.at_css('.times').text.
	else
		puts "SOLD OUT"
	end
end