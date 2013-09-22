def next_number(number)
  number.even? ? (number / 2) : (number*3 +1)
end

def counting(number)
  count = 0
  the_next = next_number(number)
  while the_next != 1
    count += 1
    the_next = next_number(the_next)
  end
  count
end

target_number = 1000000

max_count = 0
wanted_num = 0
(target_number-1).downto(100) do |x|
  if max_count <counting(x)
    max_count = counting(x)
    wanted_num = x
  end 
end

puts max_count
puts wanted_num


