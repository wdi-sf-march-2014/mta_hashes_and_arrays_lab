require 'pry'

mta = {
"N" => ["TS", "34", "28_N", "23_N", "US", "8_N"],
"L" => ["8_L", "6", "US", "3", "1"],
"S" => ["GC", "33", "28_S", "23_S", "US", "AP"]
}

puts "What line do you want to get on: N, L, S?"
line_start = gets.chomp


if line_start == "N"
puts "Which stop: TS, 34, 28_N, 23_N, US, 8_N"
stop_start = gets.chomp
elsif line_start == "L"
puts "Which stop: 8_L, 6, US, 3, 1"
stop_start = gets.chomp
elsif line_start == "S"
puts "Which stop: GC, 33, 28_S, 23_S, US, AP"
stop_start = gets.chomp
end


puts "What line do you want to get off: N, L, S?"
line_end = gets.chomp

if line_end == "N"
puts "Which stop: TS, 34, 28_N, 23_N, US, 8_N"
stop_end = gets.chomp
elsif line_end == "L"
puts "Which stop: 8_L, 6, US, 3, 1"
stop_end = gets.chomp
elsif line_end== "S"
puts "Which stop: GC, 33, 28_S, 23_S, US, AP"
stop_end = gets.chomp
end

# # on at N off at N
if line_start == "N" && line_end == "N"
starting_value =  mta["N"].index(stop_start)
ending_value = mta["N"].index(stop_end)
puts "Your trip length is #{(starting_value - ending_value).abs}."

# # gets on at L off at L
elsif line_start == "L" && line_end == "L"
starting_value =  mta["L"].index(stop_start)
ending_value = mta["L"].index(stop_end)
puts "Your trip length is #{(starting_value - ending_value).abs}."

# # gets on at S off at S
elsif line_start == "S" && line_end == "S"
starting_value =  mta["S"].index(stop_start)
ending_value = mta["S"].index(stop_end)
puts "Your trip length is #{(starting_value - ending_value).abs}."


#on at N off at L - WORKS
elsif line_start == "N" && line_end == "L"
starting_value =  mta["N"].index(stop_start)
ending_value = mta["L"].index(stop_end)
N_stops = (starting_value - 4).abs
L_stops = (ending_value -2).abs
puts "Your trip length is #{N_stops + L_stops}."

#on at N off at S - WORKS

elsif line_start == "N" && line_end == "S"
starting_value =  mta["N"].index(stop_start)
ending_value = mta["S"].index(stop_end)
N_stops = (starting_value - 4).abs
S_stops = (ending_value - 4).abs
puts "Your trip length is #{N_stops + S_stops}."

# #on at L off at S - WORKS

elsif line_start == "L" && line_end == "S"
starting_value =  mta["L"].index(stop_start)
ending_value = mta["S"].index(stop_end)
L_stops = (starting_value - 2).abs
S_stops = (ending_value - 4).abs
puts "Your trip length is #{L_stops + S_stops}."

# #on at L off at N - WORKS
elsif line_start == "L" && line_end == "N"
starting_value =  mta["L"].index(stop_start)
ending_value = mta["N"].index(stop_end)
L_stops = (starting_value - 2).abs
N_stops = (ending_value -4).abs
puts "Your trip length is #{L_stops + N_stops}."


# #on at S off at N - WORKS
elsif line_start == "S" && line_end == "N"
starting_value =  mta["S"].index(stop_start)
ending_value = mta["N"].index(stop_end)
S_stops = (starting_value - 4).abs
N_stops = (ending_value - 4).abs
puts "Your trip length is #{S_stops + N_stops}."


# #on at S off at L
elsif line_start == "S" && line_end == "L"
starting_value =  mta["S"].index(stop_start)
ending_value = mta["L"].index(stop_end)
S_stops = (starting_value - 4).abs
L_stops = (ending_value -2).abs
puts "Your trip length is #{S_stops + L_stops}."
end

