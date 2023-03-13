# frozen_string_literal: true

def fibo(n)
  return [0] if n.zero?
  return [0, 1] if n == 1

  fibo = Array.new(n + 1, 0)
  fibo[0] = 0
  fibo[1] = 1
  fibo.each_with_index do |_el, i|
    next if [0, 1].include?(i)

    fibo[i] = fibo[i - 2] + fibo[i - 1]
  end
  fibo
end

def fibo_rec(n)
  return [0] if n.zero?
  return [0, 1] if n == 1

  arr = fibo_rec(n - 1)
  arr << arr[-2] + arr[-1]
end
