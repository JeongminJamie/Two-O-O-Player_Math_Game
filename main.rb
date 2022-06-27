require './game'

require './question'

# player = Player.new("player")
# puts player.name
# puts player.lives
# player.lose_a_life
# puts player.lives

# question = Question.new()
# puts question.first_number
# puts question.second_number
# question.ask(player)
# useranswer = gets.chomp.to_i
# # puts question.check_answer(useranswer)

# if question.check_answer(useranswer)
#   puts "Yeah!"
# else 
#   puts "No!"
#   player.lose_a_life
# end

# puts player.lives

game = Game.new()
game.play

