#4
class Grade

	include Comparable

	attr_accessor :letter

	@@letters = {
		'A' => 5,
		'B' => 4,
		'C' => 3,
		'D' => 2,
		'F' => 1
	}

	def initialize(letter)
		@letter = letter
	end

	def <=>(other)
		@@letters[self.letter] <=> @@letters[other.letter]
	end
end

a_grade = Grade.new("A")
b_grade = Grade.new("B")
c_grade = Grade.new("C")
d_grade = Grade.new("D")
f_grade = Grade.new("F")

puts "a_grade > c_grade: #{a_grade > c_grade}"
puts "f_grade < d_grade: #{f_grade < d_grade}"
puts "b_grade > a_grade: #{b_grade > a_grade}"
puts "a_grade == a_grade: #{a_grade == a_grade}"