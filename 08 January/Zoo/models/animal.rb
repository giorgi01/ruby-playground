class Animal

	attr_reader :specie, :breed, :color, :gender

	def initialize(specie, breed, color, gender)
		@specie = specie
		@color = color
		@breed = breed
		@gender = gender
	end
end
