$:.unshift File.expand_path("../lib/app/", __FILE__)
require 'boardcase'

class Board 

	attr_accessor :array

  # On instancie les 9 cases et on créé un array qui les contient
  # Les 9 cases ont une position et un nom

  def initialize

    @a1 = Boardcase.new("a1", "a1")
    @a2 = Boardcase.new("a2", "a2")
    @a3 = Boardcase.new("a3", "a3")
    @b1 = Boardcase.new("b1", "b1")
    @b2 = Boardcase.new("b2", "b2")
    @b3 = Boardcase.new("b3", "b3")
    @c1 = Boardcase.new("c1", "c1")
    @c2 = Boardcase.new("c2", "c2")
    @c3 = Boardcase.new("c3", "c3")

    @array = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end

    # Tour du joueur 1 où le symbole X remplace le symbole de la case choisie
		
	def play_turn_player1 (choice_case, token_player1)
    @array.each do |check_array|
    	if check_array.position == choice_case
    		check_array.symbole = token_player1
    	end
    end
  end


  # Tour du joueur 2 où le symbole O remplace le symbole de la case choisie
  def play_turn_player2 (choice_case, token_player2)
    @array.each do |check_array|
    	if check_array.position == choice_case
    		check_array.symbole = token_player2
    	end
    end
	end

  # On vérifie que la case choisie par le joueur est libre  
  def check_choice(choice_case)
    	result = false
    	@array.each do |check_array|
    		if check_array.position == choice_case && check_array.symbole == choice_case
	    	result = true
	    	end
    	end
    return result
    end

  # On créé les combinaisons gagnantes et si elles ont été remplies le joueur remporte la partie
    
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

