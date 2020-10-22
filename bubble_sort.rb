# frozen_string_literal: true

num_arry = [1, 6, 4, 3, 8, 9, 2, 5, 2, 13, 12, 16, 8]

num_arry.length.times do
  num_arry.each_with_index do |value, index|
    next unless index < num_arry.length - 1

    next unless value > num_arry[index + 1]

    temp = value
    num_arry[index] = num_arry[index + 1]
    num_arry[index + 1] = temp
  end
end

puts num_arry
