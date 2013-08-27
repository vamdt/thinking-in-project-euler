#fibonacci = ->(n){
#  return n if n <= 2;
#  fibonacci.(n-1) + fibonacci.(n-2)
#}

fibonacci = ->(n){
  tail = ->(index, before_last, last){
    index >= n ? before_last : tail.(index+1, last, before_last + last) 
  }
  tail.(1, 1, 2)
}

1.upto(32).each do |x|
  puts x if fibonacci.(x) > 4000000
  #puts fibonacci.(30)
  #puts fibonacci.(29)
end

puts fibonacci.(29)
puts "----------------------------"
puts fibonacci.(32)

puts (1..11).map {|x| fibonacci.(x * 3 - 1)}.reduce(:+)
