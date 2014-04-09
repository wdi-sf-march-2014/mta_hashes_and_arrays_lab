puts "***MTA***"


lines={ 

n: ["8th-n", "US", "23rd-n", "28th-n","34th","TS"],

l: ["8th-l", "6th", "US","3rd","1st"],

s: ["AP", "US","23rd-6", "28th-6", "33rd", "GS"]

}

puts "What train do you want to get on: #{lines.keys.join(', ')}"
train_on = gets.chomp.to_sym
puts "Which stop: #{lines[train_on].join(', ')}"
on_stop=gets.chomp

puts "What train do you want to get off: #{lines.keys.join(', ')}"
train_off = gets.chomp.to_sym
puts "Which stop: #{lines[train_off].join(', ')}"
off_stop=gets.chomp

if train_on != train_off
	intersection=(lines[train_on]&lines[train_off])


	on_stop_index=lines[train_on].index(on_stop).to_i
	on_stop_inter_index = lines[train_on].index(intersection).to_i
	tripLength1= (on_stop_index - on_stop_inter_index).abs

	off_stop_index=lines[train_off].index(off_stop).to_i
	off_stop_inter_index = lines[train_off].index(intersection).to_i
	tripLength2= (off_stop_index - off_stop_inter_index).abs

	totalTripLength = tripLength1+tripLength2

else

  on_stop_index = lines[train_on].index(on_stop).to_i
  off_stop_index = lines[train_off].index(off_stop).to_i
  totalTripLength = (on_stop_index - off_stop_index).abs
end

puts "Your trip length is #{totalTripLength} stops!"