input = File.open('./weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)

loops = array.length 
temp_max = 0 
temp_min = 0 
day = 2 
temp_spread = 0 


(loops - 3).times do 
  temp_min = array[day][2]
  temp_max = array[day][1]
  # temp_spread = (temp_max - temp_min)   #why is this line not working?


  day += 1
  p temp_max
  p temp_min
  p temp_spread
end 






# p array[2]