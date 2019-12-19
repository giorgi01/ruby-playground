require_relative 'mammal.rb'

class Dog < Mammal

	def say_something
		'woof'
	end
end


d = Dog.new('Dobby', 'Doberman', 'Black' )
puts d
puts d.say_something
