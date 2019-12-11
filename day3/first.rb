require 'csv'

#1
class Student

  @@students = {}

	def initialize(name, last_name, gpa, debt)
		@name = name
		@last_name = last_name
		@gpa = gpa
		@debt = debt
    		#ჰეშში შეაქვს სტუდენტის მონაცემები
    		@@students[@name+'_'+@last_name] = [@gpa, @debt]
  end

  def read_data(csv_file_name) #მონაცემების წაკითხვა ფაილის გადაცემით
    CSV.foreach(csv_file_name, headers: true) do |row|
      @@students["#{row['name']}_#{row['last_name']}"] =
      [Float(row['gpa']), Integer(row['debt'])]
    end
  end

#4
	def read_name #დავალიანებების წაკითხვა რამდენიმე სტუდენტისთვის
    ARGV.each do |student|
      puts "Debt of #{student}: #{@@students[student][1]}₾"
    end
  end

  def students
=begin
აბრუნებს ჰეშს example: Giorgi Tamarashvili => [3.8, 0]
სადაც პირველი ელემენტი GPA არის, ხოლო მეორე
ელემენტი დავალიანების რაოდენობა
=end
    @@students
  end

#3
  def calculate_debts_sum #ითვლის სტუდენტების დავალიანებების ჯამს
    debt = 0
    @@students.values.each {|i| debt += i[1]}
    debt
  end
end

s1 = Student.new("Giorgi", "Tamarashvili", 3.8, 0)
s1.read_data('data.csv')
s1.read_name
puts s1.calculate_debts_sum

#5
CSV.foreach('data1.csv', headers: true) do |row|
  student = row['name']+'_'+row['last_name']
  if s1.students.include?(student)
    puts "#{student}: #{s1.students[student][0]} GPA"
  end
end
