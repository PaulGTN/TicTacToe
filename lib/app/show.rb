class Show

	# On indique à chaque joueur son symbole
	def initialize(player1, player2)
			puts "#{player1} tu as le symbole X"
	    puts "#{player2} tu as le symbole O"     
	end


	# On créé un tableau "visuel" en associant à chaque case une valeur contenu dans l'array de Board"
	def show_board(array)
		puts "|  #{array[0].symbole}  |  #{array[1].symbole}  |  #{array[2].symbole}  |"
		puts "=" * 22
		puts "|  #{array[3].symbole}  |  #{array[4].symbole}  |  #{array[5].symbole}  |"
		puts "=" * 22
		puts "|  #{array[6].symbole}  |  #{array[7].symbole}  |  #{array[8].symbole}  |"
		print "> "
	end

	# Si le joueur choisit une case occupé Game lui renverra ce message
	def check_choice
		puts "Cette case est déjà prise espèce d'aveugle !"
		print ">"
	end

end
