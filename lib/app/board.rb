$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)

#require 'player'
require 'boardcase'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :array_case

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @a1 = Boardcase.new("a1", "a1")
    @a2 = Boardcase.new("a2", "a2")
    @a3 = Boardcase.new("a3", "a3")
    @b1 = Boardcase.new("b1", "b1")
    @b2 = Boardcase.new("b2", "b2")
    @b3 = Boardcase.new("b3", "b3")
    @c1 = Boardcase.new("c1", "c1")
    @c2 = Boardcase.new("c2", "c2")
    @c3 = Boardcase.new("c3", "c3")
    
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @array_case = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3] 
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end
  
  def play_turn_player1(choice_case, token_player1)
    @array_case.each do |board_case|
      if board_case.position = choice_case
        board_case.symbole = token_player1
      end
    end
  end

  def play_turn_player2(choice_case, token_player2)
    @array_case.each do |board_case|
      if board_case.position = choice_case
        board_case.symbole = token_player2
      end
    end
  end

  def check_choice(choice_case)
    result = false
    @array_case.each do |board_case|
      if board_case.position == choice_case && board_case.symbole == choice_case
        result = true
      end
    end
    return result
  end
  
  def victory
    if @a1.symbole == @a2.symbole && @a2.symbole == @a3.symbole && @a1.symbole != " "
      return true
    elsif @b1.symbole == @b2.symbole && @b2.symbole == @b3.symbole && @b1.symbole != " "
      return true
    elsif @c1.symbole == @c2.symbole && @c2.symbole == @c3.symbole && @c1.symbole != " "
      return true
    elsif @a1.symbole == @b1.symbole && @b1.symbole == @c1.symbole && @a1.symbole != " "
      return true
    elsif @a2.symbole == @b2.symbole && @b2.symbole == @c2.symbole && @a2.symbole != " "
      return true
    elsif @a3.symbole == @b3.symbole && @b3.symbole == @c3.symbole && @a3.symbole != " "
      return true
    elsif @a1.symbole == @b2.symbole && @b2.symbole == @c3.symbole && @a1.symbole != " "
      return true
    elsif @c1.symbole == @b2.symbole && @b2.symbole == @a3.symbole && @c1.symbole != " "
      return true
    elsif false
    end
  end
end
