require_relative 'mammal'

class Dog < Mammal

	attr_accessor :age

	def initialize(name, breed, color, age)
		super(name, breed, color)
		@age = age
	end

	def say_something
		'woof'
	end
end


d = Dog.new('Dobby', 'Doberman', 'Black', 7)
puts d
puts d.say_something
