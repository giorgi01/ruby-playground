puts (0b1010 == 012 and 012 == 10 and 10 == 0xA and 0xA == 1_0) #They all have the same value Decimal 10

num = 0xA
4.times do
	puts "#{num.class}: #{num}"
	num *= num
end

line_1 = gets.chomp
v1, v2 = line_1.split('')
print v1 + v2, " \n"

line_2 = gets.chomp
v1, *v = line_2.split('')
puts v1, v

3.times {puts 3}
1.upto(10) {|i| puts i}
3.downto(0) {|i| puts i}
50.step(750, 50) {|i| puts i*i}

10.downto(1).with_index {|num, index| puts "Element: #{num}, Element index:#{index}"}