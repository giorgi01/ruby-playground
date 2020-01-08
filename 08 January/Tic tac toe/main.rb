require_relative 'tic_tac_toe'

ttt = TicTacToe.new()
ttt.start
while true
	if ttt.first_player_turn == true
		puts "#{ttt.first_player} won the match!"
		break
	elsif ttt.second_player_turn == true
		puts "#{ttt.second_player} won the match!"
		break
	end
end
