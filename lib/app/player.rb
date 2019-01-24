require 'pry'

class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end 

end

