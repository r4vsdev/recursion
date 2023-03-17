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

# def flatten_rec(array)
#   return array if array.none? { |element| element.is_a?(Array) }

#   # index = array.index {|element| element.is_a?(Array)}

#   result = []
#   array.each do |element|
#     if element.is_a?(Array)
#       result << element.shift
#     else
#       result << element
#     end
#   end
#   flatten(result)
# end

p flatten([[1, 2], 3])
