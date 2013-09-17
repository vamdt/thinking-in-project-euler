def triangular(sequence)
  (1 + sequence) * sequence / 2
end

def limit(number)
  Math.sqrt(number).floor
end

def factors_count_of(triangular)
  count = 2 + (triangular.even? ? 2 : 0)
  3.upto(limit(triangular)) do |x|
    count += 2 if triangular % x == 0
  end
  count
end

puts factors_count_of(triangular(7))

sequence = 10
loop do
  if factors_count_of(triangular(sequence)) > 500
    puts sequence
    puts triangular(sequence)
    puts factors_count_of(triangular sequence)
    break
  end
  sequence += 1
end