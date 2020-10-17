class ButtonsSession
  
    attr_reader :rocks, :papers, :scissors
    
    def initialize(rock, paper, scissors)
      @rocks = rock
      @papers = paper
      @scissors = scissors
    end
  
    def button_challenge
      @player_rand = ["Rock", "Paper", "Scissors"].sample
      if(@rocks == "Rock" && @player_rand == "Scissors")
        "You win!!! :)"
      elsif(@rocks == "Rock" && @player_rand == "Paper")
        "Computer wins :("      
      elsif(@papers == "Paper" && @player_rand == "Scissors")
        "Computer wins :("
      elsif(@papers == "Paper" && @player_rand == "Rock")
        "You win!!! :)"
      elsif(@scissors == "Scissors" && @player_rand == "Rock")
        "Computer wins :("
      elsif(@scissors == "Scissors" && @player_rand == "Paper")
        "You win!!! :)"
      else
        "it's a draw"
      end
    end
    
end