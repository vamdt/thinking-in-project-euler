sum_of_square = ->(range) {range.reduce(0) {|memo, num| memo + num ** 2 }}

#(1..n)**2 = ( (1+n)*n/2 ) ** 2 
square_of_sum = ->(range) {( (range.begin+range.end)*(range.end-range.begin+1).to_f / 2 ) ** 2}

puts square_of_sum.(1..10) - sum_of_square.(1..10) # 2640

puts "-" * 30

puts square_of_sum.(1..100) - sum_of_square.(1..100) # 25164150