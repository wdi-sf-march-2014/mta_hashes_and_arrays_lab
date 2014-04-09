mta = {"N" => ["Times Square", "34th", "28th-N", "23rd-N", "Union Square", "8th-N"],
"L" => ["8th-L", "6th", "Union Square", "3rd", "1st"],
"S" => ["Grand Central", "33rd", "28th-S", "23rd-S", "Union Square", "Astor Place"]}


puts "Which train would you like to start on: N, L, S?"
start_train = gets.chomp.upcase

puts "Which stop: #{mta[start_train]}?"
start_station = gets.chomp

puts "Which train would you like to get off: N, L, S?"
end_train = gets.chomp.upcase

puts "Which stop: #{mta[end_train]}?"
end_station = gets.chomp

stops_traveled = (mta[start_train].index(start_station) - (mta[start_train].index("Union Square"))).abs + (mta[end_train].index(end_station) - mta[end_train].index("Union Square")).abs
puts "Your trip length is #{stops_traveled} stops."