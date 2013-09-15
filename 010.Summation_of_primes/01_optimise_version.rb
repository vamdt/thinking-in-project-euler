#encoding= utf-8
# 筛选法求指定 <limit的所有素数
def primes(limit)
  result = Array.new(limit+1) {|x| x = (x % 2 == 0 && x != 2);} # 标记合数
  result[1] = true
  3.upto(Math.sqrt(limit).ceil) do |i|
    unless result[i]
      (i*2).step(limit, i) {|j| result[j] = true}
    end 
  end
  result.each_with_index {|value, index| result[index] = value ? 0 : index }.reduce(:+)
end

puts primes(2000000)