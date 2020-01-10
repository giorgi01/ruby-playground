require_relative 'data_reader'
require_relative '../models/animal'

puts 'Search: specie,breed,color,gender'
reply = gets.chomp.split(',')

data_reader = DataReader.new
animals = data_reader.read_data('../data.csv')

requested_animals = ''
requested_counter = 0
same_specie_counter = 0
same_specie_animals = ''
animals.each do |animal|
	if animal.specie == reply[0] && animal.breed == reply[1] &&
		animal.color == reply[2] && animal.gender == reply[3]
		requested_counter += 1
		requested_animals += animal.to_s
	elsif animal.specie == reply[0]
		same_specie_counter += 1
		same_specie_animals += animal.to_s
	end
end
puts "In the zoo we have #{requested_counter} your requested animal:"
puts requested_animals
puts "In this specie we have #{same_specie_counter} other animals"
puts same_specie_animals