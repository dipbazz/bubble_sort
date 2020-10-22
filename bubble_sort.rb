=begin

1. we have a list of array
2. loop through the array and compare first two elements.
3. check for the condition on those two elements
  3.1 If first value is greater than second swap their position
  3.2 if both are equal move to step 3 with next two values
  3.3 if first is less than second value move to step 3 with next two values
4. the array is sorted.
5. End of the program.

=end

num_arry = [1,6,4,3,8,9,2,5,2,13,12,16,8]
len = num_arry.length

num_arry.each_with_index do |value, index|

  if index < num_arry.length - 1
    if value > num_arry[index+1]
      temp = value
      num_arry[index] = num_arry[index+1]
      num_arry[index+1] = temp
    else
      puts "donot swap"
    end
  end
  puts "value: #{value}, index #{index}"
end

puts num_arry
