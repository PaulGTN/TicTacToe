$:.unshift File.expand_path("../lib/app/", __FILE__)
require 'player'
require 'board'
require 'boardcase'
require 'show'

class Game 

  # On établi un compteur de tour 
  @@game_count = 0 #

  # On créé 2 joueurs au début de la partie, lance un Show et un Board
  def initialize (name1, name2)
    @player1=Player.new(name1, "X")
    @player2=Player.new(name2, "O")
    @new_show=Show.new(name1, name2)
    @board=Board.new
  end

  # Lors du tour du joueur 1, on associe son choix et son symbole avec la méthode correspondante dans Board et on ajoute un tour
  def play_turn_player1 (choice_case)
    token_player1 = @player1.token
    @board.play_turn_player1(choice_case, token_player1)
    @@game_count+=1
  end

  # Idem pour le tour du joueur 2
  def play_turn_player2 (choice_case)
    token_player2 = @player2.token
    @board.play_turn_player2(choice_case, token_player2) 
  @@game_count+=1
  end

  # On vérifie si un des joueurs a gagné via la méthode victory contenue dans Board
  def victory
    @board.victory
  end

  # On affiche le plateau de Show contenant les valeurs de l'array défini dans Board 
  def show_board
    @new_show.show_board(@board.array)
  end

  # On vérifie que le choix de case est correcte via la méthode contenue dans Board
  # Si le choix est mauvais on lui envoie la méthode check_choice contenue dans View
  def check_choice(choice_case)
    if @board.check_choice(choice_case) == false
      @new_show.check_choice
    return false
		else return true
    end
  end
	
	# On compte le nombre de tours
  def self.game_count
    return @@game_count
  end
end



