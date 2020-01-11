require 'csv'
require_relative '../models/animal'

class DataReader

	def read_data(filename)
		animals = []
		CSV.foreach(filename, headers: true) do |row|
			animals << Animal.new(row['specie'],row['breed'],row['color'],row['gender'])			
		end
		animals
	end
end
