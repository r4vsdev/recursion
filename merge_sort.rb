# frozen_string_literal: true

# sort the array using the merge sort algorithm
def merge_sort(array)
  if array.size <= 2
    a = array.take(1)
    b = array.drop(1)
  else
    a = merge_sort(array.take(array.size / 2))
    b = merge_sort(array.drop(array.size / 2))
  end

  sorted = []
  while a != [] || b != []
    if a == []
      sorted.push(b.shift)
      next
    elsif b == []
      sorted.push(a.shift)
      next
    end
    if a.min < b.min
      sorted.push(a.delete(a.min))
    else
      sorted.push(b.delete(b.min))
    end
  end

  sorted
end
