#LIAISON AVEC L'APPLICATION
$:.unshift File.expand_path("/home/paul/Documents/week3/TicTacToe/lib/app/", __FILE__)

require 'application'

Application.new.perform