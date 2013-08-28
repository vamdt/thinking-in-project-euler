# largest prime of 600851475143 

def prime?(number)
  sqrt = Math.sqrt(number).floor
  for i in 2..sqrt
    return false if number % i == 0
  end
  true
end

def max_prime_factor(number)
  sqrt = Math.sqrt(number).floor
  sqrt.downto(2) do |i|
    return i if prime?(i) && (number % i == 0)
  end
  "Nothing"
end

puts max_prime_factor(600851475143)