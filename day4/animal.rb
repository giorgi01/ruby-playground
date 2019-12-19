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

	def bark
		puts 'woof'
	end
end

class Cat < Mammal

	def meow
		puts 'meow'
	end
end


=begin

c = Cat.new('Garfield', 'Persian' ,'Orange')
d = Dog.new('Dobby', 'Doberman', 'Black' )
puts c
puts d
c.meow
d.bark

=end