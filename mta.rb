require 'pry'

# The hash table of lines that you must fill in
# Each key in the hash is a line name and the value is an array of stops.

puts "**MTA**"

mta = {
			"N" => ["Times Square", "34th", "28th_N", "23rd_N", "Union Square","8th_N"],

			"L" => ["Union Square", "8th_L", "6th", "3rd", "1st"],

			"6" => ["Grand Central", "33rd", "28th_6", "23rd_6", "Union Square", "Astor Place"]
		}

	print "what train do you want to get on: N, L, 6? "
	user_train_on = gets.chomp


	if user_train_on == "N"
		intersection = (mta["N"] & mta["L"] & mta["6"]).first
		puts "Which stop? Your choices are: \
Times Square, 34th, 28th_N, 23rd_N, Union Square & 8th_N."
		user_stop1 = gets.chomp
		print "what train do you want to get off: N, L, 6? "
		user_train_off = gets.chomp
		if user_train_off == "N"
			print "Choose stop: "
			user_stop2 = gets.chomp
			trip_length = (mta["N"].index(user_stop1) - mta["N"].index(user_stop2)).abs
			puts "Your trip length is #{trip_length}."
		elsif user_train_off == "L"
			print "Choose stop: 8th_L", "6th", "3rd", "1st"
			puts
			user_stop2 = gets.chomp
			trip_length2 = (mta["N"].index(user_stop1) - mta["N"].index(intersection)).abs
			trip_length3 = (mta["L"].index(intersection) - mta["L"].index(user_stop2)).abs			
			trip_length_LN = trip_length2 + trip_length3
			puts "Your trip length is #{trip_length_LN}."
		else user_train_off == "6"
			print "Choose stop: Grand Central", "33rd", "28th_6", "23rd_6", "Astor Place"
			puts
			user_stop2 = gets.chomp
			trip_length2 = (mta["N"].index(user_stop1) - mta["N"].index(intersection)).abs
			trip_length3 = (mta["6"].index(intersection) - mta["6"].index(user_stop2)).abs			
			trip_length_LN = trip_length2 + trip_length3
			puts "Your trip length is #{trip_length_LN}."
		end

	elsif user_train_on == "L"
		intersection = (mta["N"] & mta["L"] & mta["6"]).first
		puts "Which stop? Your choices are: Union Square", "8th_L", "6th", "3rd", "1st"
		puts
		user_stop1 = gets.chomp
		print "what train do you want to get off: N, L, 6? "
		user_train_off = gets.chomp
		if user_train_off == "L"
			print "Choose stop: "
			user_stop2 = gets.chomp
			trip_length = (mta["L"].index(user_stop1) - mta["L"].index(user_stop2)).abs
			puts "Your trip length is #{trip_length}."
		elsif user_train_off == "N"
			puts "Choose stop: Times Square", "34th", "28th_N", "23rd_N", "8th_N"
			puts
			user_stop2 = gets.chomp
			trip_length2 = (mta["L"].index(user_stop1) - mta["L"].index(intersection)).abs
			trip_length3 = (mta["N"].index(intersection) - mta["N"].index(user_stop2)).abs			
			trip_length_LN = trip_length2 + trip_length3
			puts "Your trip length is #{trip_length_LN}."
		else user_train_off == "6"
			puts "Choose stop: Grand Central", "33rd", "28th_6", "23rd_6", "Astor Place"
			puts
			user_stop2 = gets.chomp
			trip_length2 = (mta["L"].index(user_stop1) - mta["L"].index(intersection)).abs
			trip_length3 = (mta["6"].index(intersection) - mta["6"].index(user_stop2)).abs			
			trip_length_L6 = trip_length2 + trip_length3
			puts "Your trip length is #{trip_length_L6}."
		end		
	
	else user_train_on == "6"
		intersection = (mta["N"] & mta["L"] & mta["6"]).first
		puts "Which stop? Your choices are: Grand Central", "33rd", "28th_6", "23rd_6", "Union Square", "Astor Place"
		user_stop1 = gets.chomp
		print "what train do you want to get off: N, L, 6? "
		user_train_off = gets.chomp
		if user_train_off == "6"
			print "Choose stop: "
			user_stop2 = gets.chomp
			trip_length = (mta["6"].index(user_stop1) - mta["6"].index(user_stop2)).abs
			puts "Your trip length is #{trip_length}."
		elsif user_train_off == "N"
			puts "Choose stop: Times Square", "34th", "28th_N", "23rd_N", "8th_N"
			puts
			user_stop2 = gets.chomp
			trip_length2 = (mta["6"].index(user_stop1) - mta["6"].index(intersection)).abs
			trip_length3 = (mta["N"].index(intersection) - mta["N"].index(user_stop2)).abs			
			trip_length_6N = trip_length2 + trip_length3
			puts "Your trip length is #{trip_length_6N}."
		else user_train_off == "L"
			puts "Choose stop: 8th_L", "6th", "3rd", "1st"
			puts
			user_stop2 = gets.chomp
			trip_length2 = (mta["6"].index(user_stop1) - mta["6"].index(intersection)).abs
			trip_length3 = (mta["L"].index(intersection) - mta["L"].index(user_stop2)).abs			
			trip_length_L6 = trip_length2 + trip_length3
			puts "Your trip length is #{trip_length_L6}."
		end		
	end



