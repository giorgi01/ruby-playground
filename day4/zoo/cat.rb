require_relative 'mammal.rb'
require_relative 'inform.rb'

class Cat < Mammal
	
	include Comparable
	include Inform

	attr_accessor :age

	def initialize(name, breed, color, age)
		super(name, breed, color)
		@age = age
	end
	def say_something
		'meow'
	end

	def <=>(other)
		self.age <=> other.age
	end
end


c = Cat.new('Garfield', 'Persian' ,'Orange', 8)
d = Cat.new('Tom', 'Persian' ,'Orange', 12)
puts c.say_something
puts d.say_something
puts c < d