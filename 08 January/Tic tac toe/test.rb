table = [[],[],[],
		 [],[],[],
		 [],[],[]]

table1 = [[1],[1],[1],
		 [1],[],[1],
		 [1],[1],[1]]

puts table.length, table1.length
puts table1.all? {|e| e[0].kind_of?(Integer)}
