red = ['Woodley Park', 'Dupont Circle', 'Farragut North', 'Metro Center', 'Union Station']
turquoise = ['Crystal City', 'Metro Center', 'Shaw-Howard', 'Beltwater']
orange = ['Farragut West', 'McPherson Sq', 'Metro Center', 'Federal Triangle', 'Smithsonian', "L'enfant Plaza"]

dc_metro = {}
dc_metro[:red] = red
dc_metro[:turquoise] = turquoise
dc_metro[:orange] = orange

puts "what line do you want to get on at (red/turquoise/orange)"
start_line = gets.chomp
puts "THese are your stops choice on that line"

dc_metro[start_line.to_sym].each do |stop|
	puts stop
end

puts "enter stop, from these choices, that you want to get on at"
start_station = gets.chomp

puts "what line do you want to get off on (red/turquoise/orange)"
finish_line = gets.chomp

puts "THese are your stops choice on that line"

dc_metro[finish_line.to_sym].each do |stop|
	puts stop
end

puts "which stop would you like to get off on? (from these choices)"
finish_station  = gets.chomp


if start_line == finish_line
	puts (dc_metro[start_line.to_sym].index(start_station) - dc_metro[finish_line.to_sym].index(finish_station)).abs
else
	start_to_MC = dc_metro[start_line.to_sym].index(start_station) - dc_metro[start_line.to_sym].index("Metro Center")
	puts "start to MC:"
	puts (start_to_MC).abs

	finish_to_MC = dc_metro[finish_line.to_sym].index(finish_station) - dc_metro[finish_line.to_sym].index("Metro Center")
	puts "MC to finish:"
	puts (finish_to_MC).abs

	puts "Total stops:"
	puts (start_to_MC).abs + (finish_to_MC).abs
end








