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

def bubble_sort_by(str_arry)
  str_arry.length.times do
    str_arry.each_with_index do |value, index|
      next unless index < str_arry.length - 1

      sort_value = yield(value, str_arry[index + 1])

      str_arry[index], str_arry[index + 1] = swap(value, str_arry[index + 1]) if sort_value.positive?
    end
  end

  str_arry
end

p bubble_sort_by(['to', 'length', 'with', 'i']) { |left, right| left.length - right.length }
