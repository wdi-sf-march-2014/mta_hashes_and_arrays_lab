require 'pry'

def MTA_Lab()

	print "***MTA***"
	
	mta = 	{
				"N_Line" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],	
				"L_Line" => ["8th", "6th", "Union Square", "3rd", "1st"], 
				"S_Line" => ["Grand Central", "33rd", "s28th", "23rd", "Union Square", "Astor Place"]  
			}
	
	print "What train do you want to get on: N_Line, L_Line, or S_Line? "
	train_on = gets.chomp

	if train_on == "N_Line"
		print "Which stop: Times Square, 34th, 28th, 23rd, Union Square, or 8th? "
		train_stop1 = gets.chomp
	elsif train_on == "L_Line"
		print "Which stop: 8th, 6th, Union Square, 3rd, 1st? "
		train_stop1 = gets.chomp
	elsif train_on == "S_Line"
		print "Which stop: Grand Central, 33rd, s28th, 23rd, Union Square, Astor Place? "
		train_stop1 = gets.chomp
	end
	
	print "What train do you want to get off: N_Line, L_Line, or S_Line? "
	train_off = gets.chomp


	#Scenarios for train_on = "N_Line"
	if train_on == "N_Line" && train_off == "N_Line" 
		print "Which stop: Times Square, 34th, 28th, 23rd, Union Square, or 8th? "
		train_stop2 = gets.chomp
		trip_length = (mta["N_Line"].index(train_stop1) - mta["N_Line"].index(train_stop2)).abs
	elsif train_on == "N_Line" && train_off == "L_Line"
		print "Which stop: 8th, 6th, Union Square, 3rd, 1st? "
		train_stop2 = gets.chomp
		trip_length = (mta["N_Line"].index(train_stop1) - mta["N_Line"].index("Union Square")).abs + (mta["L_Line"].index("Union Square") - mta["L_Line"].index(train_stop2)).abs
	elsif train_on == "N_Line" && train_off == "S_Line" 
		print "Which stop: Grand Central, 33rd, s28th, 23rd, Union Square, Astor Place? "
		train_stop2 = gets.chomp
		trip_length = (mta["N_Line"].index(train_stop1) - mta["N_Line"].index("Union Square")).abs + (mta["S_Line"].index("Union Square") - mta["S_Line"].index(train_stop2)).abs

	#Scenarios for train_on = "L_Line"
	elsif train_on == "L_Line" && train_off == "L_Line"
		print "Which stop: 8th, 6th, Union Square, 3rd, 1st? "
		train_stop2 = gets.chomp
		trip_length = (mta["L_Line"].index(train_stop1) - mta["L_Line"].index(train_stop2)).abs
	elsif train_on == "L_Line" && train_off == "N_Line"
		print "Which stop: Times Square, 34th, 28th, 23rd, Union Square, or 8th? "
		train_stop2 = gets.chomp
		trip_length = (mta["L_Line"].index(train_stop1) - mta["L_Line"].index("Union Square")).abs + (mta["N_Line"].index("Union Square") - mta["N_Line"].index(train_stop2)).abs
	elsif train_on == "L_Line" && train_off == "S_Line"
		print "Which stop: Grand Central, 33rd, s28th, 23rd, Union Square, Astor Place? "
		train_stop2 = gets.chomp
		trip_length = (mta["L_Line"].index(train_stop1) - mta["L_Line"].index("Union Square")).abs + (mta["S_Line"].index("Union Square") - mta["S_Line"].index(train_stop2)).abs

	#Scenarios for train_on = "S_Line"
	elsif train_on == "S_Line" && train_off == "S_Line" 
		print "Which stop: Grand Central, 33rd, s28th, 23rd, Union Square, Astor Place? "
		train_stop2 = gets.chomp
		trip_length = (mta["S_Line"].index(train_stop1) - mta["S_Line"].index(train_stop2)).abs
	elsif train_on == "S_Line" && train_off == "N_Line" 
		print "Which stop: Times Square, 34th, 28th, 23rd, Union Square, or 8th? "
		train_stop2 = gets.chomp
		trip_length = (mta["S_Line"].index(train_stop1) - mta["S_Line"].index("Union Square")).abs + (mta["N_Line"].index("Union Square") - mta["N_Line"].index(train_stop2)).abs
	elsif train_on == "S_Line" && train_off == "L_Line" 
		print "Which stop: 8th, 6th, Union Square, 3rd, 1st? "
		train_stop2 = gets.chomp
		trip_length = (mta["S_Line"].index(train_stop1) - mta["S_Line"].index("Union Square")).abs + (mta["L_Line"].index("Union Square") - mta["L_Line"].index(train_stop2)).abs
		
	end
	
	print "Your trip length is #{trip_length} stops."

end

MTA_Lab()