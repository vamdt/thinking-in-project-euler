# 累加 判断素数法, this is faster than 00_version
def prime?(number)
  return false if number == 1
  return true if number < 4
  return false if number % 2 == 0
  return true if number < 9
  return false if number % 3 == 0

  i = 5
  # 6k +- 1 is prime(number > 3) 
  # 5(6k-1) prime 
  # 6(6k) not prime
  # 7(6k+1) prime
  # 8(6k+2) not prime
  # 9(6k+3) not prime
  # 10(6k+4) not prime
  # so only 6k-1, 6k-1+2=6k+1 即可
  while i <= Math.sqrt(number).ceil 
    return false if number % i == 0
    return false if number % (i+2) == 0
    i += 6 
  end
  true 
end

count = 1 # 2 is prime, start from 3 
index = 3
loop do
  count += 1 if prime?(index)
  break if count == 10001
  index += 2
end

puts index #104743