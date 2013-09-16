#encoding= utf-8
# 筛选法求指定 <limit的所有素数，result只存limit一半，因为even is not primr but 2
def primes(limit)
  result = Array.new((limit/2)+1, false) # 标记合数
  result[0] = result[1] = true
  2.upto(Math.sqrt(limit).ceil) do |i|
    target_number = i*2 -1
    unless result[i]
      (target_number*2).step(limit, target_number) {|j| result[(j+1)/2] = true if j.odd?}
    end 
  end

  result.each_with_index {|value, index| result[index] = value ? 0 : index*2-1 }.reduce(:+) + 2
end

puts primes(2000000)