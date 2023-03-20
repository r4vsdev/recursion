def min(a, b)
  a < b ? a : b
end

# sort the array using the merge sort algorithm
def merge_sort(array)
  if array.size <= 2
    # p array
    a = array.take(1)
    b = array.drop(1)
  else
    a = merge_sort(array.take(array.size / 2))
    b = merge_sort(array.drop(array.size / 2))
  end

  sorted = []
  # a.each do |el_a|
  #   b.each do |el_b|

  #   end
  # end

  while a != [] || b != []
    if a == []
      sorted.push(b.shift)
      # puts "next"
      next
    elsif b == []
      sorted.push(a.shift)
      # puts "next"
      next
    end
    # p [a.min, b.min]
    if a.min < b.min
      # puts "push #{a.min} to sort"
      sorted.push(a.delete(a.min))
    else
      # puts "push #{b.min} to sort"
      sorted.push(b.delete(b.min))
    end
    # p [a, b]
  end
  # puts "exiting the while"

  p "sorted = #{sorted}"
  return sorted
end

# merge_sort([8, 4])
# merge_sort([8, 4, 5, 6])
merge_sort([8, 4, 5, 6, 2, 7, 1, 9])
