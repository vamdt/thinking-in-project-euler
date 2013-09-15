def prime?(number)
  return false if number == 1
  return true if number < 4
  return false if number % 2 == 0
  return true if number < 9
  return false if number % 3 == 0

  i = 5
  while i <= Math.sqrt(number).ceil 
    return false if number % i == 0
    return false if number % (i+2) == 0
    i += 6 
  end
  true 
end

sum = 0 

def prime_sum(limit)
  result = 2 + 3
  5.step(limit, 2) do |i|
    result += i if prime?(i)
  end
  result
end

puts prime_sum(2000000)
