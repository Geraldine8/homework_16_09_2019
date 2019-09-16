class Game

  def self.play(player1, player2)
    if player1 == "paper" && player2 == "rock" || player2 == "paper" && player1 == "rock"
      return "paper"
    end

    if player1 == "rock" && player2 == "scissors" || player2 == "rock" && player1 == "scissors"
      return "rock"
    end

    if player1 == "scissors" && player2 == "paper" || player2 == "scissors" && player1 == "paper"
      return "scissors"
    end

    return "Tie" if player1 == player2

  end

end
