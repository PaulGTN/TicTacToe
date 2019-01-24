#require 'board'
#require 'boardcase'

class Show

	#Affiche la ditribution des symboles au début du jeu
	def initialize(player1, player2)
		puts "#{player1} tu as le symbole X"
	  puts "#{player2} tu as le symbole O"     
	end


	#affiche l'échiquier en puisant à chaque coup dans le tableau du Board. 
	#Permet d'afficher le symbole dynamiquement
	def show_board(array_case)
		puts "|  #{array_case[0].symbole}  |  #{array_case[1].symbole}  |  #{array_case[2].symbole}  |"
		puts "-" * 22
		puts "|  #{array_case[3].symbole}  |  #{array_case[4].symbole}  |  #{array_case[5].symbole}  |"
		puts "-" * 22
		puts "|  #{array_case[6].symbole}  |  #{array_case[7].symbole}  |  #{array_case[8].symbole}  |"
		print "> "
	end

	#En cas de réponse éronnés de l'utilisateur, on affiche ce message
	def check_choice
		puts "Cette case est déjà prise espèce d'aveugle !"
		print ">"
	end

end
