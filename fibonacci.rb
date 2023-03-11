def fibo(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  fibo = Array.new(n, 0)
  fibo[0] = 0
  fibo[1] = 1
  fibo.each_with_index do |_el, i|
    next if [0, 1].include?(i)

    fibo[i] = fibo[i - 2] + fibo[i - 1]
  end
  fibo
end

p fibo(8) # => [0, 1, 1, 2, 3, 5, 8, 13].
