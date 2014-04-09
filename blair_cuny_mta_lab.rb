require 'pry'

# The hash table of lines that you must fill in
# Each key in the hash is a line name and the value is an array of stops.


mta = {
"N" => ["TS", "34", "28", "23", "US", "8"],
"L" => ["8", "6", "US", "3", "1"],
"S" => ["GC", "33", "28", "23", "US", "AP"]
}
 
puts "What line do you want to get on: N, L, S?"
line_start = gets.chomp
 
if line_start == "N"
	puts "Which stop: TS, 34, 28, 23, US, 8"
	stop_start = gets.chomp
		elsif line_start == "L"
  		puts "Which stop: 8, 6, US, 3, 1"
  		stop_start = gets.chomp
		else line_start == "S"
			puts "Which stop: GC, 33, 28, 23, US, AP"
			stop_start = gets.chomp
end
 
puts "What line do you want to get off: N, L, S?"
line_end = gets.chomp
 
if line_end == "N"
	puts "Which stop: TS, 34, 28, 23, US, 8"
	stop_end = gets.chomp
		elsif line_end == "L"
			puts "Which stop: 8, 6, US, 3, 1"
			stop_end = gets.chomp
		else line_end == "S"
			puts "Which stop: GC, 33, 28, US, AP"
			stop_end = gets.chomp
end
 
 
if line_start == "N" && line_end == "N"
	starting_value =  mta["N"].index(stop_start)
	ending_value = mta["N"].index(stop_end) 
	puts (starting_value - ending_value).abs
		elsif line_start == "N" && line_end == "L"
			starting_value =  mta["N"].index(stop_start)
			ending_value = mta["L"].index(stop_end)
			n_line_stops = (starting_value - 4).abs
			l_line_stops = (ending_value - 2).abs
			puts "Your trip length is #{n_line_stops + l_line_stops} stops"
		elsif line_start == "N" && line_end == "S"
			starting_value =  mta["N"].index(stop_start)
			ending_value = mta["S"].index(stop_end)
			n_line_stops = (starting_value - 4).abs
			s_line_stops = (ending_value - 2).abs
			puts "Your trip length is #{n_line_stops + s_line_stops} stops"
		elsif line_start == "L" && line_end == "L"
			starting_value = mta["L"].index(stop_start)
			ending_value = mta["L"].index(stop_end)
			puts (starting_value - ending_value).abs
		elsif line_start == "L" && line_end == "S"
			starting_value =  mta["L"].index(stop_start)
			ending_value = mta["S"].index(stop_end)
			l_line_stops = (starting_value - 4).abs
			s_line_stops = (ending_value - 2).abs
			puts "Your trip length is #{l_line_stops + s_line_stops} stops"
		elsif line_start == "L" && line_end == "N"
			starting_value =  mta["L"].index(stop_start)
			ending_value = mta["N"].index(stop_end)
			l_line_stops = (starting_value - 4).abs
			n_line_stops = (ending_value - 2).abs
			puts "Your trip length is #{l_line_stops + n_line_stops} stops"
		elsif line_start == "S" && line_end == "N"
			starting_value =  mta["S"].index(stop_start)
			ending_value = mta["N"].index(stop_end)
			s_line_stops = (starting_value - 4).abs
			n_line_stops = (ending_value - 2).abs
			puts "Your trip length is #{s_line_stops + n_line_stops} stops"
		elsif line_start == "S" && line_end == "L"
			starting_value =  mta["S"].index(stop_start)
			ending_value = mta["L"].index(stop_end)
			s_line_stops = (starting_value - 4).abs
			l_line_stops = (ending_value - 2).abs
			puts "Your trip length is #{s_line_stops + l_line_stops} stops"
		else line_start == "S" && line_end == "S"
			starting_value =  mta["S"].index(stop_start)
			ending_value = mta["S"].index(stop_end)
			puts (starting_value.to_i - ending_value.to_i).abs
end


