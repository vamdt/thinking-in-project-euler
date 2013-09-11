# coding utf-8
# 筛选法求素数
def primes(number)
  results = []
  numbers = (2..number).to_a
  i = 2
  while i <= number
    results << i
    numbers.delete_if {|x| x % i == 0} 
    break if numbers.size == 0 || results.size == 10001
    i = numbers[0] 
  end
  results
end

final_primes = primes(200000)

puts final_primes.last #104743
puts final_primes.size #10001



