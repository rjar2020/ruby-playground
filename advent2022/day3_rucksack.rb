require 'set'

DOWNCASE_OFFSET = 96.freeze
UPCASE_OFFSET = 38.freeze

def is_upcase(letter)
  /[[:upper:]]/.match(letter) != nil
end

def calculate_priority(letter)
  is_upcase(letter)? letter.ord - UPCASE_OFFSET : letter.ord - DOWNCASE_OFFSET
end

def find_item_type_both_compartiments(firs_half_set, second_half_set)
  (firs_half_set & second_half_set).first
end

priority_total = 0
f = File.open("rucksack.txt", "r")
f.each_line do |line|
  first, second = line.chars.each_slice(line.length / 2).map(&:join)
  priority_total += calculate_priority(
    find_item_type_both_compartiments(
      first.chars.to_set, 
      second.chars.to_set)
    )
end
f.close

puts "What is the sum of the priorities of those item types? -> #{priority_total}"
