def find_triplet
  result = -1
  3.upto(1000/3 + 1) do |i|
    if (500000- (1000 *i)) % (1000-i) == 0
      a = i
      b = (500000- (1000 *i)) / (1000-i)
      c = 1000 - a - b
      result =  a * b * c
      break
    end
  end
  result
end

puts find_triplet


# a*a + b*b = c*c
# a + b + c = 1000
# =>  (a + b - 1000)**2 = a**2 + b**2
# => a = (500000 - 1000b) / (1000 - b)
# so loop a in (1000/3+1), because a < b < c
# => if (500000- (1000 *i)) % (1000-i) == 0
# go next: get b( (500000 - 1000b) / (1000 - b) )
# => get c : 1000 - a - b
# then get a*b*c
