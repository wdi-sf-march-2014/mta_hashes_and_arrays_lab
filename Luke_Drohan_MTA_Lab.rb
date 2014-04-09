#Subway Lab  - Luke Drohan
h = {
	
	"n" => ["Times Square", "34th", "28th-n", "23rd-n", "us", "8th"],

	"l" => ["8th", "6th", "us", "3rd", "1st"],

	"s" =>["gc", "33rd", "28th-6", "23rd-6", "us", "Astor Place"]

}
#first choice
puts "What train would you like to get on? n, l, s?"
train_choice1 = gets.chomp
print "Which stop do you want to get on - #{h["n"]}, #{h["l"]}, #{h["6"]}? "
stop_choice1 = gets.chomp

#second choice
puts "What train would you like to get off? n, l , or s?"
train_choice2 = gets.chomp
puts "Which stop do you want to get off? - #{h["n"]}, #{h["l"]}, #{h["6"]}? "
stop_choice2 = gets.chomp

if train_choice1 == train_choice2

	stop1 = h[train_choice1].index(stop_choice1).to_i
	stop2 = h[train_choice2].index(stop_choice2).to_i
	total_stops = (stop1 - stop2).abs


else

	union_square = (h[train_choice1] & h[train_choice2])

	stop1 = h[train_choice1].index(stop_choice1).to_i
	stop1_intersection = h[train_choice1].index(union_square).to_i
	trip1_length = (stop1 - stop1_intersection).abs

	stop2 = h[train_choice2].index(stop_choice2).to_i
	stop2_intersection = h[train_choice2].index(union_square).to_i
	trip2_length = (stop2 - stop2_intersection).abs

	total_stops = trip1_length + trip2_length

end	

puts "Your total subway stops will be #{total_stops}."