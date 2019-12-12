require 'csv'

class CsvReader

	attr_accessor :students

	def initialize
		@students = {}
	end

	def read_data(filename)
		CSV.foreach(filename, headers: true) do |row|
			student = "#{row['name']} #{row['last_name']}"
			@students[student] = [Float(row['gpa']), Float(row['debt'])]
		end
	end

	def total_debt
		total = 0
		@students.values.each {|i| total += i[1]} # To get debt value
		total
	end

	def student_debt
		students["#{ARGV[0]} #{ARGV[1]}"][1]
	end

	def print_gpa(filename)
		student_gpa = {}
		CSV.foreach(filename, headers: true) do |row|
			student = "#{row['name']} #{row['last_name']}"
			student_gpa[student] = @students[student][0]
		end
		student_gpa
	end
end
