puts "Your goal is to take trains to get to union square"

  nline = ["Times Square", "34th", "28th", "23rd street", "Union Square", "8th"]
  lline = ["8th street", "6th", "Union Square", "3rd", "1st"]
  sline = ["Grand Central", "33rd", "28th street", "23rd", "Union Square", "Astor Place"]

  subway_hash = 
  {
    "N" => ["Times Square" => 4, "34th" => 3, "28th" => 2, "23rd street" => 1, "Union Square" => 0, "8th" => 1],
    "L" =>["8th street" => 2, "6th" => 1, "Union Square" => 0, "3rd" => 1, "1st" => 2],
    "S" => ["Grand Central" => 4, "33rd" => 3, "28th street" => 2, "23rd" => 1, "Union Square" => 0, "Astor Place" => 1] 
  }
  
  puts "What line do you want to get on, L, N or the S?"
  line = gets.chomp

  if line == "N"
  puts "Which stop do you want to get on at? ; #{nline}"
  start_stop = gets.chomp
  p counter = subway_hash["N"][0][start_stop]
  end

  if line == "S"
  puts "Which stop do you want to get on at? ; #{sline}"
  start_stop = gets.chomp
  p counter = subway_hash["S"][0][start_stop]
  end

  if line == "L"
  puts "Which stop do you want to get on at? ; #{lline}"
  start_stop = gets.chomp
  p counter = subway_hash["L"][0][start_stop]
  end

  puts "What train do you want to get on?"
  line2 = gets.chomp
  if line2 == "N"
  puts "Which stop do you want to get on at? ; #{nline}"
  end_stop = gets.chomp
  counter += subway_hash["L"][0][end_stop]
  end

  if line2 == "S"
  puts "Which stop do you want to get on at? ; #{sline}"
  end_stop = gets.chomp
  counter += subway_hash["L"][0][end_stop]
  end

  if line2 == "L"
  puts "Which stop do you want to get on at? ; #{lline}"
  end_stop = gets.chomp
  counter += subway_hash["L"][0][end_stop]
  end
  
  p "Your trip length is #{counter} stops
