# require 'pry'

# The hash table of lines that you must fill in
# Each key in the hash is a line name and the value is an array of stops.
mta = {n: ["Time Square", "34th", "38th", "28th-n", "23rd-n", "Union Square", "8th-n"],
		l: ["8th-l", "6th", "Union Square", "3rd", "1st"], 
		s: ["Grand Central ", "33rd", "8th-s", "23rd-s", "Union Square", "Astor Place"]}

		# puts mta


puts "What train do you want to get on?"
train_on =gets.chomp.to_sym
p train_on

puts  "Which stop: #{mta[train_on].join(", ")}?"
	stop_on =gets.chomp

puts "What train do you want to get off: n, l, s?"
	train_off =gets.chomp.to_sym

puts "Which stop: #{mta[train_off].join(", ")}"
	stop_off =gets.chomp

if train_on == train_off

	index1 = mta[train_on].index(stop_on)
	index2 = mta[train_off].index(stop_off)
		num_stops= index2 - index1

	puts num_stops.abs
else
	index1 = mta[train_on].index(stop_on)
	index2 = mta[train_on].index("Union Square")
		num_stops= (index2 - index1).abs

	index3 = mta[train_off].index(stop_off)
	index4 = mta[train_off].index("Union Square")
 		num_stops += (index3 - index4).abs
 	end

puts "Your trip is #{num_stops} stops."

# make it count  







