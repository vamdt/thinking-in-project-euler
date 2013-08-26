# first edition, sum for calc range, max_multiple_below for calc max multiple, and do not calc 

# sum of ruby range type
def sum(number_range, &calc_block)
  result = 0
  number_range.each do |number|
    if block_given?
      result += calc_block.call(number)
    else
      result +=number
    end
  end
  result
end

def max_multiple_below(limit_number, factor)
  (limit_number-1) / factor
end

a = sum(1..max_multiple_below(1000, 5)) { |number| number * 5 }

b = sum(1..max_multiple_below(1000, 3)) { |number| number % 5 == 0 ? 0 : number * 3 }

puts a + b