require 'pry'

class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :player_name
  attr_reader :player_token

  def initialize
    #TO DO : doit régler son nom et sa valeur
    puts "MORPION : ULTIMATE BRAWL XXX 10 THE GAME"
    puts "Les règles sont simples :"
    puts "deux joueurs, 2, jetons, 9 cases"
    puts "le premier joueur alignant 3 jetons remporte la partie."
    puts "LET'S GO !"

    puts "Joueur 1 donne moi ton nom!"
    player1_name = gets.chomp
    puts "Joueur 1 choisis ton jeton (X ou O)"
    player1_token = gets.chomp
    puts "Joueur 2 donne moi ton nom!"
    player2_name = gets.chomp 
    puts "Joueur 2 choisis ton jeton (X ou O)"
    player2_token = gets.chomp
    if player2_token == player1_token
      abort initialize puts "Vous ne pouvez pas prendre le même jeton, duh !"
    else 
    #player.rb:28:in `initialize': uninitialized constant Player (NameError)
      @player1 = Player.new(player1_name, player1_token)
      @player2 = Player.new(player2_name, player2_token) 
    end 
  end
end


