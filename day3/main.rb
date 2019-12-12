require 'csv'
require_relative 'csv_reader'

reader = CsvReader.new
reader.read_data('students_data.csv')
p reader.students
puts reader.student_debt #ტერმინალში შეგვაქვს სტუდენტის სახელი
p reader.print_gpa('student_names.csv')
