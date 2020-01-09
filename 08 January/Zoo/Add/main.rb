require_relative 'csv_file_writer'

csv_filewriter = CsvFileWriter.new

puts 'Do you want to make a new database or append to existed?'
reply = gets.chomp
if reply == 'a'
	puts 'Where to append?'
	filename = gets.chomp

	puts 'Type comma-separated animal specie, breed, color and gender'
	puts 'If you want to exit please type \'exit\' or empty line'
	
	while true
		line = gets.chomp
		break if line.empty? or line == 'exit'
		csv_filewriter.append_to_database(filename, line.split(','))
	end
	
elsif reply == 'm'
	puts 'Filename (save as):'
	filename = gets.chomp

	puts 'Type comma-separated animal specie, breed, color and gender'
	puts 'If you want to exit please type \'exit\' or empty line'

	csv_filewriter.make_database(filename, 'specie', 'breed', 'color', 'gender')
	
	while true
		line = gets.chomp
		break if line.empty? or line == 'exit'

	csv_filewriter.append_to_database(filename, line.split(','))
	end
end
