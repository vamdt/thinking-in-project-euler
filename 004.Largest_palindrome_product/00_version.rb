
def palindrome?(number)
  number.to_s == number.to_s.reverse
end

max_number = 0



999.downto(100) do |first_number|
  999.downto(100) do |second_number|
    next if first_number < second_number

    temp_number = first_number * second_number
    if palindrome?(temp_number) && max_number < temp_number
      max_number = first_number * second_number
    end
  end
end

puts max_number