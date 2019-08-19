require "./questions.rb"
require "./player.rb"

p1 = Players.new("Player 1")
p2 = Players.new("Player 2")
current_player = p1

until p1.life == 0 || p2.life == 0
  question = Questions.new()
  result = question.question(current_player.name)
  current_player.life = current_player.life + result
  puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
  if p1.life == 0
    puts "Player 2 wins with a score of #{p2.life}/3"
    puts "----- GAME OVER -----"
  elsif p2.life == 0
    puts "Player 1 wins with a score of #{p1.life}/3"
    puts "----- GAME OVER -----"
  else
    puts "----- NEW TURN -----"
  end
  if current_player == p1
    current_player = p2
  else
    current_player = p1
  end
   
end