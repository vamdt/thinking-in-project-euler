# tail recursion
fibonacci = ->(n){
  tail = ->(index, before_last, last){
    index >= n ? before_last : tail.(index+1, last, before_last + last) 
  }
  tail.(1, 1, 2)
}

#calc the max suffix that the number < 40000 (it's 32)
max_n = ->{ 10.upto(100).each {|i| return i-1 if fibonacci.(i) > 4000000} }

# because 3x - 1(x=1,2,3,4...) is even value 
list = -> { (1..max_n.()).select {|i| i*3-1 <= max_n.()} }

puts list.().map {|x| fibonacci.(x * 3 - 1)}.reduce(:+)
