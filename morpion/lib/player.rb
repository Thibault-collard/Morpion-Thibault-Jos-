require 'pry'

##############################################################################
class Player
	def starting_game
		puts "Bienvenue sur ce jeu du Morpion, crée par José et Thibault"
	end

	
	def enter_name
		puts "Quel est le nom du premier joueur ?"
		exemple = nil
		@player1 = gets.chomp
		puts "Quel est le nom du deuxième joueur ?"
		@player2 = gets.chomp
	end

	def choice_side
		selector = nil
		choice_player1 = nil
		choice_player2 = nil
		@choice_player1 = choice_player1
		@choice_player2 = choice_player2
		choice = ['x','o', 'X', 'O']
		until choice.include?(selector)
		puts "Bonjour #{@player1}, dans quel camp es-tu, pour les X ou les O ?"
		selector = gets.chomp
		end
		selector
		if selector == 'x' || selector == 'X'
			choice_player1 = "X"
			choice_player2 = "O"
			puts "Player 1 : #{choice_player1}, Player 2 : #{choice_player2}"
		end
		if selector == "o" || selector == "O"
			choice_player1 = "o"
			choice_player2 = "x"
			puts "Player 1 : O, Player 2 : O"
		end
	end
end
#############################################################################

class Board < Player
		def create_board
		@b = [["1","2","3"],["4","5","6"],["7","8","9"]]
		end
		def print_board
			print @b[0][0]
			print @b[0][1]
			puts @b[0][2]
			print @b[1][0]
			print @b[1][1]
			puts @b[1][2]
			print @b[2][0]
			print @b[2][1]
			print @b[2][2]
		end
end

class Fight < Board

#def winner
#	@wins = @b[0][0], @b[0][1], @b[0][2]
#			[[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9],
#           [1, 5, 9], [7, 5, 3]]
#	end

	def start_fight
		i = 0
		b = create_board

		while i < 9
		#	if @b == "X" || "OOO"
		#	puts "wins!"
		#	end
		i = i + 1
		puts "Le joueur X joue. Merci de choisir un nombre"
		selector = nil
		choice = ["1","2","3","4","5","6","7","8","9"]
		until choice.include?(selector)
			selector = gets.chomp
		end
			selector
		
		if selector == "1"
			@b[0][0] = "X"
			c = print_board
			puts c
		end

		if selector == "2"
			@b[0][1] = "X"
			c = print_board
			puts c
		end

		if selector == "3"
			@b[0][2] = "X"
			c = print_board
			puts c
		end
	
		if selector == "4"
			@b[1][0] = "X"
			c = print_board
			puts c
		end

		if selector == "5"
			@b[1][1] = "X"
			c = print_board
			puts c
		end
		
		if selector == "6"
			@b[1][2] = "X"
			c = print_board
			puts c
		end
		
		if selector == "7"
			@b[2][0] = "X"
			c = print_board
			puts c
		end

		if selector == "8"
			@b[2][1] = "X"
			c = print_board
			puts c
		end
		
		if selector == "9"
			@b[2][2] = "X"
			c = print_board
			puts c
		end


		#when "1" then @b[0][0] = @choice_player1
		#	puts #{@b[0][0]}
		#when "2" then @b[0][1] = @choice_player1
		#when "3" then @b[0][2] = @choice_player1
		#when "4" then @b[1][0] = @choice_player1
		#when "5" then @b[1][1] = @choice_player1
		#when "6" then @b[1][2] = @choice_player1
		#when "7" then @b[2][0] = @choice_player1
		#when "8" then @b[2][1] = @choice_player1
		#when "9" then @b[2][2] = @choice_player1
	puts "#{@choice_player1}"
		end
	end
end
#############################################################################
#player = Player.new
#player.starting_game
#player.enter_name
#player.choice_side
#board = Board.new
#board.create_board
#board.print_board
fight = Fight.new
fight.start_fight
