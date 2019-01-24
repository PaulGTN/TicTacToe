#LIAISON AVEC LE GAME
$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)
require 'game'
require 'player'

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

    puts "Bienvenue dans MORPION : ULTIMATE BRAWL XXX 10 THE GAME Joueur 2"
    puts "Donne ton nom !"
    print "> "
    #On stocke le pseudo 2 dans une variable
    @name2=gets.chomp

    #On instancie un nouveau jeu appelé @game, avec en attributs les pseudos récupérés
    @game = Game.new(@name1, @name2)

    #On clean le terminal pour lancer le jeu proprement
    #system "clear"
    puts "Ok tout le monde est là, LET'S GO !!!"
  end

  def perform 
        
    while true
      #system "clear"
      puts "#{@name1} c'est à toi !"
      puts "Choisis une case :"
      puts ""
      @game.show_board

      #on récupère le choix de l'utilisateur
      case_choice = gets.chomp 

      while true
        if @game.check_choice(case_choice) == true
        break
        else
        case_choice = gets.chomp 
        end
      end

      @game.play_turn_player1(case_choice)

      # Méthode winner
      victory = @game.victory
        if victory == true then 
          puts "#{@name1}, tu as gagné !"
        break
        end
        
      if Game.game_count >=9
        puts "Vous êtes tous les deux nuls !"
        break
      end

      #system "clear"
      puts "#{@name2} c'est à toi !"
      puts "Choisis une case :"
      puts ""
      @game.show_board


      choice_case = gets.chomp #on attend le choix de l'utilisateur

      while true
        if @game.check_choice(choice_case) == true
        break
        else
        choice_case = gets.chomp 
        end
      end

      @game.play_turn_player2(choice_case)

      # Méthode winner
      victory = @game.victory
        if victory == true 
          then puts "#{@name2}, tu as gagné"
          break
        end
      
    end        
  end
end