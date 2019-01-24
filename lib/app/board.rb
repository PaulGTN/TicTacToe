require 'player'
require 'boardcases'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :[BoardCases]

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    hash_boardcases = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    player_choice_hash = {"a1" => @a1,
                          "a2" => @a2,
                          "a3" => @a3,
                          "b1" => @b1,
                          "b2" => @b2,
                          "b3" => @b3,
                          "c1" => @c1,
                          "c2" => @c2,
                          "c3" => @c3}
  end
  
  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    
    while victory? == false
    
      puts "#{@player1_name} choisis ta case"
    player1_choice = gets.chomp
    player1_choice_hash.each do |choice, hash_boardcases| 
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    if player1_choice == " " do
      player_choice_hash = "#{@player1_token}"
      print_board
    else puts "Cette case est déjà prise"

    puts "#{@player1_name} choisis ta case"
    player2_choice = gets.chomp
    player_choice_hash.each do |choice, hash_boardcases| 
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    if player2_choice == " " do
      player_choice_hash = "#{@player2_token}"
      print_board
    else puts "Cette case est déjà prise"
    end
    end
    end
    end
    end 
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    x_win = ["X", "X", "X"]
    o_win = ["O", "O", "O"]
    
    winning_lines = [[@a1, @a2, @a3],
                    [@a1, @b2, @c3],
                    [@a1, @b1, @c1],
                    [@b1, @b2, @b3],
                    [@c1, @c2, @c3],
                    [@c1, @b2, @a3],
                    [@a2, @b2, @c2],
                    [@a3, @b3, @c3]]

    winning_lines.each do |check|
      if check == x_win || check == o_win
        victory? = true
      end
    end
    if @turn >=9
      draw = true
    end
  end
end 
