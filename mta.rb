# MTA

require 'pry'

# The hash table of lines that you must fill in
# Each key in the hash is a line name and the value is an array of stops.


mta = {
	n: ["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th-n"],
	l: ["8th-l", "6th", "Union Square", "3rd", "1st"],
	s: ["Grand Central", "33rd", "28th-s", "23rd-s", "Union Square", "Astor Place"]
}

numstops = 0

puts "*** MTA ***"

puts "What train do you want to get on: n, l, s? "
trainon = gets.chomp.to_sym

puts "Which stop: #{mta[trainon].join(", ")}?"
stopon = gets.chomp

puts "What train do you want to get off: n, l, s? "
trainoff = gets.chomp.to_sym

puts "Which stop: #{mta[trainoff].join(", ")}?"
stopoff = gets.chomp

if trainon == trainoff
	index1 = mta[trainon].index(stopon)
	index2 = mta[trainoff].index(stopoff)
	numstops = (index1 - index2).abs 
else 
	index1 = mta[trainon].index(stopon)
	index2 = mta[trainon].index("Union Square")
	numstops = (index1 - index2).abs 

	index1 = mta[trainoff].index("Union Square")
	index2 = mta[trainoff].index(stopoff)
	numstops += (index1 - index2).abs 
end

# If the ride includes a transfer, 
# you count from the stop you got on 
# to the transfer point, then from the transfer point
# to the stop you get off at. 



puts "Your trip length is #{numstops} stops."


