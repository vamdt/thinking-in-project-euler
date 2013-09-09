palindrome = ->(n) { n.to_s == n.to_s.reverse }

calc_palindrome = -> {
  max_palindrome = 0
  999.downto(100) do |first|
    999.downto(100) do |second|
      next if first < second
      temp = first * second
      max_palindrome = temp if max_palindrome < temp && palindrome.(temp)  
    end
  end
  max_palindrome
}

puts calc_palindrome.()