class TicTacToe

	attr_accessor :table
	attr_reader :first_player, :second_player

	def initialize
		@table = [[],[],[],
			      [],[],[],
			      [],[],[]]
		@first_player = ''
		@second_player = ''
	end

	def start
		puts 'Tic tac toe pattern and indexes are shown below'
		puts "[1][2][3]\n[4][5][6]\n[7][8][9]"
		puts '1P name:'
		@first_player = gets.chomp
		puts '2P name:'
		@second_player = gets.chomp
		puts show_table
	end


	def move(cell, symbol)
=begin
Example:
მოთამაშეს სურს 1-ელ უჯრაში ჩაწეროს 'X'
მეთოდში შემოდის ცვლადად 1
cell -= 1 ვამცირებთ, რომ
შემდგომში გამოვიყენოთ როგორც ინდექსი 
=end
		cell -= 1
		while cell > 8 || cell < 0
			puts 'Invalid coordinate'
			cell = Integer(gets.chomp) - 1
		end
		while !table[cell].empty?
			puts 'Place is already taken'
			puts 'Where to place then?'
			cell = Integer(gets.chomp) - 1
		end
			table[cell] = symbol

	end

	def win?
		case
		when [table[0],table[1],table[2]].uniq.size == 1 && !(table[0].empty? || table[1].empty? || table[2].empty?)
			return true
		when [table[3],table[4],table[5]].uniq.size == 1 && !(table[3].empty? || table[4].empty? || table[5].empty?)
			return true
		when [table[6],table[7],table[8]].uniq.size == 1 && !(table[6].empty? || table[7].empty? || table[8].empty?)
			return true
		when [table[0],table[3],table[6]].uniq.size == 1 && !(table[0].empty? || table[3].empty? || table[6].empty?)
			return true
		when [table[1],table[4],table[7]].uniq.size == 1 && !(table[1].empty? || table[4].empty? || table[7].empty?)
			return true
		when [table[2],table[5],table[8]].uniq.size == 1 && !(table[2].empty? || table[5].empty? || table[8].empty?)
			return true
		when [table[0],table[4],table[8]].uniq.size == 1 && !(table[0].empty? || table[4].empty? || table[8].empty?)
			return true
		when [table[2],table[4],table[6]].uniq.size == 1 && !(table[2].empty? || table[4].empty? || table[6].empty?)
			return true	
		end
		false
	end

	def draw?
		table.all? {|e| e[0].kind_of?(String)}
	end

	def show_table
		"[#{table[0]}][#{table[1]}][#{table[2]}]\n[#{table[3]}][#{table[4]}][#{table[5]}]\n[#{table[6]}][#{table[7]}][#{table[8]}]".squeeze('[]')
	end

	def first_player_turn
		puts "It's #{@first_player}'s turn\nPlease type number where to set X:"
		cell = Integer(gets.chomp)
		move(cell, 'X')
		puts show_table
		win?
	end

	def second_player_turn
		puts "It's #{@second_player}'s turn\nPlease type number where to set O:"
		cell = Integer(gets.chomp)
		move(cell, 'O')
		puts show_table
		win?
	end
end
