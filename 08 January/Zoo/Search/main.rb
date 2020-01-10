require_relative 'data_reader'
require_relative '../models/animal'

puts 'Search: specie,breed,color,gender'
reply = gets.chomp.split(',')

data_reader = DataReader.new
animals = data_reader.read_data('../data.csv')

txt = ''
counter = 0
specie_counter = 0
animals.each do |animal|
	if animal.specie == reply[0] && animal.breed == reply[1] &&
		animal.color == reply[2] && animal.gender == reply[3]
		counter += 1
		txt += animal.to_s
	elsif animal.specie == reply[0]
		specie_counter += 1
	end
end
puts "In the zoo we have #{counter} your requested animal:"
puts txt
puts "In this specie we have #{specie_counter} other animals"