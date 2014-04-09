# MTA LAB

# hash {line => array[stations]}

metro = {"N" => ["TSN","34N","28N", "23N", "US", "8N"], "L" => ["8L", "6L", "US", "3L", "1L"], "S"=> ["GCS", "33S", "28S", "23S", "US", "APS"]}

# ask user for start and end points

puts "What train line do you want to start on (N, L, or S)?"
line_start = gets.chomp.upcase
puts "What station do you want to start at (#{metro[line_start]})?"
station_start = gets.chomp.upcase

puts "What train line do you want to end on (N, L, or S)??"
line_end = gets.chomp.upcase
puts "What station do you want to end at (#{metro[line_end]})?"
station_end = gets.chomp.upcase


# if start and stop are on the same line, find index of start and index of end and take absolute value of their difference |stop - start|

# if not on the same line, find distance on the first line from start to intersection (Union Square), then find the distance on second line from intersection (Union Square) to the end point, and add two distances together

if line_start == line_end
	point_a = metro[line_start].index(station_start)
	point_b = metro[line_end].index(station_end)
	distance = (point_b - point_a).abs
else
	point_a = metro[line_start].index(station_start)
	union_1 = metro[line_start].index("US")
	union_2 = metro[line_end].index("US")
	point_b = metro[line_end].index(station_end)
	distance = (point_a - union_1).abs + (union_2 - point_b).abs
end

puts " Your trip length is #{distance} stops. Next time walk."