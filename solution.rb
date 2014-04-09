require 'pry'
def mta 
subway_system =  {"N" => [ 
"ts",
"34th",
"28th", 
"23rd", 
"us", 
"8th"],

"L" => [
"8th",
"6th",
"us", 
"3rd", 
"1st"], 

"S"=> 
["gc", 
"33rd", 
"28th", 
"23rd", 
"us", 
"ap"]}

puts "What train do you want to get on: N, L, S"
line1=gets.chomp.upcase
puts "Which stop: ?"
p subway_system[line1]
stop1=gets.chomp
puts "What train do you want to get off: N, L, S?"
line2=gets.chomp.upcase
puts "Which stop:"
p subway_system[line2]
stop2=gets.chomp

start = subway_system[line1].index(stop1)
stop = subway_system[line2].index(stop2)
intersection_point1 = subway_system[line1].index("us")
intersection_point2 = subway_system[line2].index("us")  

if line1 == line2
distance = (start - stop).abs
else
distance = (start - intersection_point1).abs + (stop - intersection_point2).abs 
puts "Going from #{stop1} to #{stop2}, your Trip Length is #{distance} stops"
end
end


mta()
