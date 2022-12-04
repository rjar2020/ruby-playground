move_rules_foe = {
  "A" => "Z",
  "B" => "X",
  "C" => "Y",
}

move_rules_you = {
  "X" => "C",
  "Y" => "A",
  "Z" => "B",
}

#Draw rules could be equivalences rules, however will allow both players to use same moves alphabet
draw_rules = {
  "X" => "A",
  "Y" => "B",
  "Z" => "C",
}

scores = {
  "A" => 1,
  "B" => 2,
  "C" => 3
}

total_foe = 0
total_you = 0
win = 6
draw = win / 2
for i in 0..2 do
  print "Your opponets move: "
  move_foe = gets.chomp.upcase
  print "Your move: "
  move_you = gets.chomp.upcase
  
  if move_rules_you[move_you] == move_foe
    puts "You won!"
    total_you += scores[draw_rules[move_you]] + win
    total_foe += scores[move_foe]
  elsif draw_rules[move_you] == move_foe
    puts "Its a draw."
    total_you += scores[draw_rules[move_you]] + draw
    total_foe += scores[move_foe] + draw
  elsif move_rules_foe[move_foe] == move_you
    puts "You lost."
    total_you += scores[draw_rules[move_you]]
    total_foe += scores[move_foe] + win
  else
    puts "Invalid option(s): Player 1 -> #{move_foe}, Player 2 -> #{move_you}"
    next
  end
end

puts "Your score -> #{total_you}"
puts "Your opponent score -> #{total_foe}"
