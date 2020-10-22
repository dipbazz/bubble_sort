def swap(first, second)
  [second, first]
end

def bubble_sort(num_arry)
  num_arry.length.times do
    num_arry.each_with_index do |value, index|
      next unless index < num_arry.length - 1

      next unless value > num_arry[index + 1]

      num_arry[index], num_arry[index + 1] = swap(value, num_arry[index + 1])
    end
  end

  num_arry
end

p bubble_sort([10, 6, 4, 3, 8, 9, 2, 5, 2, 13, 12, 16, 8])
