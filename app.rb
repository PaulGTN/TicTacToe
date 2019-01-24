#LIAISON AVEC L'APPLICATION
$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)

require 'applications'

Application.new.perform