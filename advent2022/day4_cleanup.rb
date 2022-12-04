require 'set'

def clean_up_sections_overlap(first_section_set, second_section_set)
  first_section_set >= second_section_set || second_section_set >= first_section_set
end
section_overlaps =0
puts "Elves pairs with sections overlaping?"
f = File.open("sections_assigments.txt", "r")
f.each_line do |line|
  first, second = line.split(',')
  first_init, first_end = first.split('-')
  second_init, second_end = second.split('-')
  if clean_up_sections_overlap(Set.new(first_init..first_end), Set.new(second_init..second_end.strip!))
    section_overlaps += 1
    puts line
  end
end
f.close

puts "In how many assignment pairs does one range fully contain the other? -> #{section_overlaps}"