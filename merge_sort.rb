def min (a, b)
  a < b ? a : b
end

def merge_sort(array)
  if array.size <= 2
    p array
    a = array.take(1)
    b = array.drop(1)
  else
    a = merge_sort(array.take(array.size / 2))
    b = merge_sort(array.drop(array.size / 2))
  end
  # p a
  # p b
  sorted = []
  a.each do |el_a|
    b.each do |el_b|
      el_a < el_b ? sorted.push(el_a, el_b) : sorted.push(el_b, el_a)
    end
  end

  

  p "sorted = #{sorted}"
  return sorted
end

merge_sort([8, 4, 5, 6])
# merge_sort([8, 4, 5, 6, 2, 7, 1, 9])
# merge_sort([8, 4])