# one line 

# first 
(1..999).select {|n| n % == 3 || n % == 5}.reduce(:+)

# second (a1 + an) * n / 2 -> ( (1 + 999/factor) * 999/factor / 2 ) * factor
# example ( (1 + 999 / 3) * 999 / 3 / 2 ) * 3    
x=->(factor){(1 + (999/factor)) * 999 / 2}
puts x.(3) + x.(5) - x.(15)