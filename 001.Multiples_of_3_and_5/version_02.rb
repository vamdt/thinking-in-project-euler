# sum of ruby range type, use sum formula
def sum(number_range)
  (number_range.begin + number_range.end) * (number_range.end - number_range.begin + 1) / 2 
end

def max_multiple_below(limit_number, factor)
  (limit_number-1) / factor
end

def real_sum(factor)
  sum(1..max_multiple_below(1000, factor)) * factor
end

puts real_sum(3) + real_sum(5) - real_sum(15)