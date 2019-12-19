class Animal

	attr_accessor :name, :color, :breed

	def initialize(name, breed, color)
		@name = name
		@color = color
		@breed = breed
	end
end

class Mammal < Animal

	def to_s
		"#{self.class} | Name: #{@name} | Breed: #{@breed}"
	end
end

class Dog < Mammal

	def say_something
		'woof'
	end
end

class Cat < Mammal

	def initialize(name, breed, color)
		super(name, breed, color)
	end

	def say_something
		'meow'
	end
end


c = Cat.new('Garfield', 'Persian' ,'Orange')
d = Dog.new('Dobby', 'Doberman', 'Black' )
puts c
puts d
puts c.say_something
puts d.say_something
