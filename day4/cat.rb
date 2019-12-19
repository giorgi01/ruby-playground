require_relative 'mammal.rb'

class Cat < Mammal

	def say_something
		'meow'
	end
end


c = Cat.new('Garfield', 'Persian' ,'Orange')
puts c
puts c.say_something