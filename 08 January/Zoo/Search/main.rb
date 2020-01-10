require_relative 'data_reader'
require_relative '../models/animal'

data_reader = DataReader.new
animals = data_reader.read_data('../data.csv')

puts 'Type by which parameter do you want to search an animal'
puts 'If you want to search specific animal type specie,breed,color,gender'

reply = gets.chomp

case reply
when 'specie'
	puts 'Type specie:'
	reply = gets.chomp
	animals_counter = 0
	animals_text = ''
	animals.each do |animal|
		if animal.specie == reply
			animals_counter +=1
			animals_text += animal.to_s + "\n"
		end
	end
	puts "In the zoo we have #{animals_counter} your requested animal:"
	puts animals_text

when 'breed'
	puts 'Type breed:'
	reply = gets.chomp
	animals_counter = 0
	animals_text = ''
	animals.each do |animal|
		if animal.breed == reply
			animals_counter +=1
			animals_text += animal.to_s + "\n"
		end
	end
	puts "In the zoo we have #{animals_counter} your requested animal:"
	puts animals_text

when 'color'
	puts 'Type color:'
	reply = gets.chomp
	animals_counter = 0
	animals_text = ''
	animals.each do |animal|
		if animal.color == reply
			animals_counter +=1
			animals_text += animal.to_s + "\n"
		end
	end
	puts "In the zoo we have #{animals_counter} your requested animal:"
	puts animals_text

when 'gender'
	puts 'Type gender:'
	reply = gets.chomp
	animals_counter = 0
	animals_text = ''
	animals.each do |animal|
		if animal.gender == reply
			animals_counter +=1
			animals_text += animal.to_s + "\n"
		end
	end
	puts "In the zoo we have #{animals_counter} your requested animal:"
	puts animals_text

else
	reply = reply.split(',')
	requested_animals = ''
	requested_counter = 0
	same_specie_animals = ''
	same_specie_counter = 0
	animals.each do |animal|
		if animal.specie == reply[0] && animal.breed == reply[1] &&
			animal.color == reply[2] && animal.gender == reply[3]
			requested_counter += 1
			requested_animals += animal.to_s + "\n"
		elsif animal.specie == reply[0]
			same_specie_counter += 1
			same_specie_animals += animal.to_s + "\n"
		end
	end
	puts "In the zoo we have #{requested_counter} your requested animal:"
	puts requested_animals
	puts "In this specie we have #{same_specie_counter} animals:"
	puts same_specie_animals
end