require 'rubygems'
require 'nokogiri'
require 'open-uri'

html_code = "
<html>
<head>
  <title>Visualization of Top 30 NHL Goal Scorers</title>
</head>
<body>
"

counter = 1
file = File.new("top_goals_org.txt", "r")
while (line = file.gets)
	if counter%2 == 0
		html_code += "<div class=\"goals\">#{line}</div>"
	else
    	html_code += "<div class=\"player\">#{line}</div>"
    end
    counter += 1
end
file.close

html_code += "
</body>
</html>
"
begin

file = File.open('html_data_visualization.html', 'w')
file.write(html_code)

rescue error => e
	# can't write

ensure
	file.close unless file == nil
end
