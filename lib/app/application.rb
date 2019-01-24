$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)
require 'game'
require'pry'

class Application 
attr_accessor :name1, :name2

  def initialize
    # On demande le nom du joueur 1 et on le stocke dans une variable
    puts "Bienvenue dans MORPION : ULTIMATE BRAWL XXX 10 THE GAME Joueur 1"
    puts "Donne ton nom !"
    print "> "
    @name1=gets.chomp
    
    # Idem pour le joueur 2
		puts "Bienvenue dans MORPION : ULTIMATE BRAWL XXX 10 THE GAME Joueur 1"
    puts "Donne ton nom !"
    print "> "
    @name2=gets.chomp

    # On permet à Game d'accéder aux 2 noms
    @game = Game.new(@name1, @name2)

    puts "Ok tout le monde est là, LET'S GO !!!"
  end

  def perform 

    # On lance une boucle
    while true
    puts "#{@name1} c'est à toi !"
    puts "Choisis une case :"
    puts ""
    @game.show_board


    # On stocke le choix 
    case_choice = gets.chomp 

    # On ne garde la case que si elle est libre 
    while true
      if @game.check_choice(case_choice) == true
      break
      else
      case_choice = gets.chomp 
      end
    end


    # Si la résponse est correcte, elle est prise en compte
    @game.play_turn_player1(case_choice)
           
    # Si le joueur remplis les condtions de victory le jeu s'arrête
    victory = @game.victory
      if victory == true 
        then puts "Bravo #{@name1}, tu as gagné !"
      break
    end

    # Au bout du 9 tour sans gagnant, le macth est nul et la boucle s'arrête 
      if Game.game_count >= 9
        puts "Vous êtes tous les deux affreusement mauvais à ce jeu !"
      break
      end
               
    puts "#{@name2} c'est à toi !"
    puts "Choisis une case :"
    puts ""
    @game.show_board

    case_choice = gets.chomp 

    while true
      if @game.check_choice(case_choice) == true
      break
      else
      case_choice = gets.chomp 
      end
    end
  
    @game.play_turn_player2(case_choice)
      
    victory = @game.victory
      if victory == true 
        then puts "Bravo #{@name2}, tu as gagné !"
      break
      end
            
    end
  end
end


