$:.unshift File.expand_path("../lib/app/", __FILE__)
require 'board'

class Boardcase

	attr_accessor :position, :symbole

	# On donne à la case une position et un symbole 
  def initialize(position, symbole)
    @position = position
    @symbole = symbole
  end
end
