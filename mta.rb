# hash subway

metro = {"N" => ["TSN","34N","28N", "23N", "US", "8N"], "L" => ["8L", "6L", "US", "3L", "1L"], "S"=> ["GCS", "33S", "28S", "23S", "US", "APS"]}

# ask user what line start
# ask user what station start

# ask user what line end
# ask user what station end

# if start and stop are on the same line, find index of start and index of stop and take absolute value of their difference (|stop - start|)
# if not on the same line, find distance from start to Union Square, then find new line by looking up the stop
# then find the new distance on 2nd line from Union Square to the stop.

puts "What train line do you want to start on? (N,L, or S)"
	line_start = gets.chomp.upcase
puts "What station do you want to start at? #{metro[line_start]}"
	station_start = gets.chomp.upcase


puts " What train line do you want to end on? (N,L, or S)"
line_end = gets.chomp.upcase
# additional: if input is no N, L, or S, puts Error message. else, puts station question.
puts "What station do you want to end at? #{metro[line_end]}"
station_end = gets.chomp.upcase
# additional: if input is not a station on line_end, puts error message. metro[line_end].include?(station_)

if line_start == line_end
	point_a = metro[line_start].index(station_start)
	point_b = metro[line_end].index(station_end)
	distance = (point_b - point_a).abs
	puts " Your trip length is #{distance} stops. Next time, you should walk."

elsif
	point_a = metro[line_start].index(station_start)
	union_1 = metro[line_start].index("US") 			# union_1 points to index of union Square station on line_start
	union_2 = metro[line_end].index("US")				# union_2 points to index of U.S. station on line_end
	point_b = metro[line_end].index(station_end)
	distance = (point_a - union_1).abs + (union_2 - point_b).abs
else

end
puts " Your trip length is #{distance} stops. Next time, you should walk."




