require 'pry'

# The hash table of lines that you must fill in
# Each key in the hash is a line name and the value is an array of stops.

puts "***MTA***"

def find_distance(line, stop1, stop2)
 
subway_system =  {"N" => [ "ts","34th","28th", "23rd", "us", "8th"],
				
				"L" => ["8th","6th","us", "3rd", "1st"], 
				
				"S"=> ["gc","33rd", "28th", "23rd", "us", "ap"]}
 
start_point = 0
end_point = 0
 
 
subway_system[line].each_index do |i|
	if subway_system[line][i] == stop1 
		start_point = i 
	elsif subway_system[line][i] == stop2 
		end_point = i
	end 
end
if end_point - start_point > 0 
		return distance = end_point - start_point
	else
		return distance = start_point - end_point
	end
 
end
 
 
 
def distance_different_lines(line1, line2, stop1, stop2)
	dist1 = find_distance(line1, stop1, "us")
	dist2 = find_distance(line2, stop2, "us")
	return total_dist = dist1 + dist2 
end
 
 
def print_stops 
line1=0
line2=0
line3=0
if line1 == "N" || line2 == "N"
	puts "ts, 34th, 28th, 23rd, us, 8th"
elsif line1 == "L" || line2 == "L"
	puts "8th, 6th, us, 3rd, 1st"
elsif line1 == "S" || line3 == "S"
	puts "gc, 33rd, 28th, 23rd, us, ap"
end
end
 
puts "What train do you want to get on: N, L, S"
line1=gets.chomp.upcase
print_stops
puts "Which stop: ?"
stop1=gets.chomp
 
puts "What train do you want to get off: N, L, S?"
print_stops
line2=gets.chomp.upcase
puts "Which stop:"
stop2=gets.chomp
 
if line1 == line2
	distance = find_distance(line1, stop1, stop2)	
else
	distance = distance_different_lines(line1, line2, stop1, stop2)
end
 
puts "Your trip length is #{distance} stops"
