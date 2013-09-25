def under_ten
  %w{one two three four five six seven eight nine}
end

def from_10_to_19 #10
  %w{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
end

def multiles_of_ten
  %w{twenty thirty forty fifty sixty seventy eighty ninety}
end

def letter_counts_of_array array
  array.reduce(0) {|sum, item| sum + item.size}
end

def letters_under_one_hundred
  letter_counts_of_array(under_ten) * 9 + letter_counts_of_array(from_10_to_19) + 
    letter_counts_of_array(multiles_of_ten)*10
end

def letters_under_on_thousand
  "hundred".size * 900 + "and".size * 891 + letter_counts_of_array(under_ten)*100 + letters_under_one_hundred * 10
end

puts letters_under_on_thousand + "one thousand".size
