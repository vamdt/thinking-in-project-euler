multiple = ->(x) { (1..x).reduce(1) {|memo, num| memo.lcm num } }

puts multiple.(20)