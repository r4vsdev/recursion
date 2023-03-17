# frozen_string_literal: true

def flatten(array)
  new_arr = []
  array.each do |el|
    if el.is_a?(Array)
      el.each { |element| new_arr << element }
    else
      new_arr << el
    end
  end
  new_arr
end

def flatten_rec(array, result = [])
  array.each do |element|
    if element.is_a?(Array)
      flatten_rec(element, result)
    else
      result << element
    end
  end
  result
end
