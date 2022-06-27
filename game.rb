require './player'

class Game
  def initialize
    @player1 = Player.new("player 1") 
    @player2 = Player.new("player 2") 
  end

  def play
    current_player = @player1
    while @player1.lives > 0 && @player2.lives > 0 do 
      question = Question.new()
      question.ask(current_player)
      useranswer = gets.chomp.to_i
      if question.check_answer(useranswer)
        puts "Yeah!"
      else 
        puts "No!"
        current_player.lose_a_life
      end
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      if current_player == @player1
        current_player = @player2
      else
        current_player = @player1
      end
      puts "----- NEW TRUN -----"
    end  
   puts "#{winner.name} wins with a score of #{winner.lives}/3"
   puts "----- GAME OVER -----"
   puts "Good bye!"
  end

  def winner 
    if @player1.lives > @player2.lives
      return @player1
    else
      return @player2 
    end
  end

end