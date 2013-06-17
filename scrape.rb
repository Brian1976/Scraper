require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.nhl.com/ice/playerstats.htm#?navid=nav-sts-indiv"

data = Nokogiri::HTML(open(url))

top_goals = data.css('div.contentBlock table.data.stats tr td:nth-child(6)')
puts top_goals.text # => 975439776866464443275222654422
