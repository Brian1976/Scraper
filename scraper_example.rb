require 'csv'
require 'spp'

contact_row_data = %w ('id', 'firstname', 'lastname', 'email')
#contact_row_data = ['id', 'firstname', 'lastname', 'email'] 

1000.times do |i|     
	data << [i, faker::Name:name.split[0], faker::Name:name.split[1], faker::Name:name.split[2], faker::Name:name.split[3]]
csv.open('output.csv', 'wb') do |row|
	row << contact_row_data

	data.each do |d|
		row << d
	end
end
