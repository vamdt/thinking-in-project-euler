def fact(n)
  (1..n).reduce(:*)
end

def paths_count(n)
  fact(2*n) / (fact(n)**2)
end


puts paths_count(20)

#http://mathforum.org/advanced/robertd/manhattan.html