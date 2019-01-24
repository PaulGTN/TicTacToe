$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)

require 'board'
require 'boardcase'
require 'player'
require 'show'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  #attr_accessor :board, :current_player, :status, : players
  @@game_count = 0  

  def initialize(name1, name2)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player1 = Player.new(name1, "X")
    @player2 = Player.new(name2, "O")
    @board = Board.new
    @new_show = Show.new(name1, name2)
    #@current_player = @player1
  end

  def play_turn_player1(choice_case)
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    token_player1 = @player1.token 
    @board.play_turn_player1(choice_case, token_player1) 
    @@game_count +=1
  end

  def play_turn_player2(choice_case)
    token_player2 = @player2.token 
    @board.play_turn_player2(choice_case, token_player2)
    @@game_count +=1
  end
  #def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  #end
  def victory
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    @board.victory
  end    

  def show_board
    @new_show.show_board(@board.array_case)
  end

  def check_choice(choice_case)
    if @board.check_choice(choice_case) == false
      @new_show.check_choice
      return false
    else return true
    end
  end

  
  def self.game_count
    return @@game_count
  end

end