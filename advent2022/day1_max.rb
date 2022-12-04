f = File.open("elves_calories.txt", "r")
elves = [0]
current_winning_elf_index = 0
f.each_line do |line|
  if line.chomp.empty?
    current_winning_elf_index = elves.length-1 if elves[elves.length-1] > elves[current_winning_elf_index]
    elves<<0
  else
    elves[elves.length-1] += Integer(line)
  end
end
f.close
puts "Total calories by elf, in order -> "
puts elves
puts "Max calories -> #{elves[current_winning_elf_index]}"
puts "Winning Elf -> #{current_winning_elf_index += 1}"
