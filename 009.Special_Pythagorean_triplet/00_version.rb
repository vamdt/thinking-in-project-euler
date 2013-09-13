def find_a_and_b
  result = []
  3.upto(1000) do |i|
    i.upto(1000-i) do |j|
      if (i+j + Math.sqrt(i**2 + j**2)) == 1000
        result << i << j << (1000-i-j)
        return result
      end
    end
  end
 result
end

puts find_a_and_b.reduce(:*)
