input = File.open('./weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)     #reads the weather.dat file that was provided

loops = array.length 
temp_max = 0 
temp_min = 0 
day = 2 
temp_spread = 0 
winner = 100
win_day = 0


(loops - 3).times do 
  temp_min = array[day][2]
  temp_min = temp_min.to_i    #changes the strings into integers
  # p temp_min
  temp_max = array[day][1]
  temp_max = temp_max.to_i
  # p temp_max
  temp_spread = (temp_max - temp_min)   #why is this line not working? (temp_min and temp_max were strings for some reason)
  day += 1
  
  if temp_spread < winner 
    winner = temp_spread
    win_day = day

  end



  # p temp_max
  # p temp_min
  # p temp_spread
end 

p win_day






# p array[2]