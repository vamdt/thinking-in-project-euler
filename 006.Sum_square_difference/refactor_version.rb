# sum_of_square 1**2 + 2**2 + ..+ n**2 = (n*(n+1)/2) * ((2n+1)/3) = n*(n+1)*(2n+1) / 6 
# http://en.wikipedia.org/wiki/Square_pyramidal_number 

# square_of_sum (1..n)**2 = ( (1+n)*n/2 ) ** 2

# so result is n*(n+1)*(2n+1)/6 - ( (1+n)*n/2 ) ** 2
# result is n*(n**2-1)(3*n+2)/12

hence = ->(n) {( n*(n**2-1)*(3*n+2) )/12.to_f }

puts hence.(10) # 2640
puts hence.(100) # 25164150