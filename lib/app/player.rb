class Player

  attr_accessor :name, :token
  
  # On associe les joueurs aves un nom et un token(jeton)
  def initialize(name, token)
    @name = name
    @token = token
  end

end
