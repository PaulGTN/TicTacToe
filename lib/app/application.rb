#LIAISON AVEC LE GAME
$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)
require 'game'
require'pry'

#require 'player'

class Application 
attr_accessor :name1, :name2

  def initialize
    #On clean le terminal 
    #system "clear"
    puts "Bienvenue dans MORPION : ULTIMATE BRAWL XXX 10 THE GAME Joueur 1"
    puts "Donne ton nom !"
    print "> "

    #On stock le pseudo 1 dans une variable
    @name1=gets.chomp

		puts "Bienvenue dans MORPION : ULTIMATE BRAWL XXX 10 THE GAME Joueur 1"
    puts "Donne ton nom !"
    print "> "

    #On stocke le pseudo 2 dans une variable
    @name2=gets.chomp

    #On instancie un nouveau jeu appelé @game, avec en attributs les pseudos récupérés
    @game = Game.new(@name1, @name2)

    #On clean le terminal pour lancer le jeu proprement
    #system "clear"
    puts "Ok tout le monde est là, LET'S GO !!!"
    #Petite pause de 2 seconde
    #sleep 2
  end

  def perform 

    #Le jeu est lancé en boucle
    while true
      #system "clear"

      puts "#{@name1} c'est à toi !"
      puts "Choisis une case :"
      puts ""
      @game.show_board


            #on récupère le choix de l'utilisateur
      case_choice = gets.chomp 

      #On ne conserve la réponse de l'utilisateur que si elle passe le filtre check_choice
        while true
          if @game.check_choice(case_choice) == true
          break
          else
          case_choice = gets.chomp 
          end
        end


           # Si la résponse est correcte on remplit la case avec une croix
        @game.play_turn_player1(case_choice)
           
          # On vérifie s'il y a un gagnant
          #Si oui on stop le jeu
          #Si non on passe au joueur suivant
        victory = @game.victory
          if victory == true 
            then puts "Bravo #{@name1}, tu as gagné !"
          break
          end

          #Si au 9 eme coup joué , il n'ya pas de gagnant, on break et on affiche Match Nul 
          if Game.game_count>=9
            puts "Match Nul"
            break
          end
               

            #On clean l'écran pour le joueur 2
       #system "clear"
       puts "#{@name2} c'est à toi !"
       puts "Choisis une case :"
       puts ""
       @game.show_board

      #On récupère la réponse de l'utilisateur 2
      case_choice = gets.chomp 

        #On ne conserve la réponse de l'utilisateur que si elle passe le filtre check_choice
        while true
          if @game.check_choice(case_choice) == true
          break
          else
          case_choice = gets.chomp 
          end
        end
            
            # Si la résponse est correcte on remplit la case avec un rond
        @game.play_turn_player2(case_choice)
           

            # On vérifie s'il y a un gagnant
            #Si oui on stop le jeu
            #Si non on passe au premier joueur
        victory = @game.victory
          if victory == true 
            then puts "Bravo #{@name2}, tu as gagné !"
          break
          end
            
       end
    end
end


