class Show

	#Affiche la ditribution des symboles au début du jeu
	def initialize(player1, player2)
			puts "#{player1} tu as le symbole X"
	    puts "#{player2} tu as le symbole O"     
	end


	#affiche l'échiquier en puisant à chaque coup dans le tableau du Board. 
	#Permet d'afficher le symbole dynamiquement
	def show_board(array)
		puts "|  #{array[0].symbole}  |  #{array[1].symbole}  |  #{array[2].symbole}  |"
		puts "=" * 22
		puts "|  #{array[3].symbole}  |  #{array[4].symbole}  |  #{array[5].symbole}  |"
		puts "=" * 22
		puts "|  #{array[6].symbole}  |  #{array[7].symbole}  |  #{array[8].symbole}  |"
		print ">> "
	end

	#En cas de réponse éronnés de l'utilisateur, on affiche ce message
	def check_choice
		puts "Cette case est déjà prise espèce d'aveugle !"
		print ">"
	end

end
