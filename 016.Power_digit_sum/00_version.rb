target_number = 256**125

def sum_for_every_digits(number)
  number.to_s.split("").reduce(0) {|sum, num| sum + num.to_i}
end

puts sum_for_every_digits target_number
