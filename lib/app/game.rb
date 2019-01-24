#LIAISON AVEC LE GAME
$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)
require 'player'
require 'board'
require 'boardcase'
require 'show'

class Game 


    @@game_count = 0 #

    #On instancie 2 joueurs à l'initialisation du jeu, une vue et un échiquier
    def initialize (name1, name2)
        @player1=Player.new(name1, "X")
        @player2=Player.new(name2, "O")
        @new_show=Show.new(name1, name2)
        @board=Board.new
    end

    #Lorsque le player 1 joue, on instancie le Board avec son choix et son symbole
    def play_turn_player1 (choice_case)
        token_player1 = @player1.token
        @board.play_turn_player1(choice_case, token_player1)
        @@game_count+=1
    end

    #Lorsque le player 2 joue, on instancie le Board avec son choix et son symbole
    def play_turn_player2 (choice_case)
        token_player2 = @player2.token
        @board.play_turn_player2(choice_case, token_player2) 
        @@game_count+=1
    end

    #On vérifie si l'un des joueurs a gagné en instanciant le Board. 
    def victory
        @board.victory
    end

    #On affiche l'échiquier dans la view en utilisant le tableau qui contient touts les cases.
    def show_board
        @new_show.show_board(@board.array)
    end

   

    #On vérifie la validité de la réponse des joueurs dans le Board
    #Si la réponse est non conforme, on lui envoi un message depuis la view
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



