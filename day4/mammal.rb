require_relative 'animal.rb'

class Mammal < Animal

	def to_s
		"#{self.class} | Name: #{@name} | Breed: #{@breed}"
	end
end