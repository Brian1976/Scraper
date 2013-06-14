require 'nokogiri'
require 'open-uri'

url = "http://www.nhl.com/ice/playerstats.htm#?navid=nav-sts-indiv"

data = Nokogiri::HTML(open(url))

=begin
if 1 != 0
	puts "hi"
else
	puts "bye"
end
=end

puts.data.css('.active')

if data.at_css('.active').text.strip != "Stanley Cup Final"
	puts "hello"
else
	puts data.css('.active').text.strip
#	puts "it's true"
end