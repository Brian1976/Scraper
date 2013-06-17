require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.nhl.com/ice/playerstats.htm#?navid=nav-sts-indiv"
data = Nokogiri::HTML(open(url))

File.open('top_goals.txt', 'w') do |f|

  players = data.css('div.contentBlock table.data.stats tr td:nth-child(2)').each do |player|
		f.write(player.text + "\n")
	end

	top_goals = data.css('div.contentBlock table.data.stats tr td:nth-child(6)').each do |goals|
		f.write(goals.text + "\n") # => 975439776866464443275222654422
	end

end

data = File.read("top_goals.txt")
lines = data.split("\n")

@i = 0
players_arr = Array.new
goals_arr = Array.new

lines.each do |line|
	if @i <= 30 
		players_arr[@i] = line
	elsif @i > 30 && @i <= 60
		goals_arr[@i] = line
	end
	@i += 1
end

$j = 0
File.open('top_goals_org.txt', 'w') do |f|
	while $j <= 30 do
		f.write(players_arr[$j] + ":" + goals_arr[$j] + "\n")
	end
end
