class PowerOfThree
	
	attr_reader :value
	
	def initialize(value)
	@value = value
	end
	
	def <=>(other)
		@value <=> other.value
	end
	
	def succ
		PowerOfThree.new(@value + @value + @value)
	end
	
	def to_s
		@value.to_s
	end
end
p1 = PowerOfThree.new(3)
p2 = PowerOfThree.new(243)
(p1..p2).each {|e| puts e}

temperature_c = gets.chomp.to_i
puts "Temperature is #{temperature_c}°C" if (-40..50) === temperature_c
puts "In Kelvins it will be: #{temperature_c+273.15}K"
puts "In Fahrenheit: #{temperature_c*1.8+32}°F"
case temperature_c
when -40...-10
	puts "There is very cold weather!"
when -10...15
	puts "Cold weather"
when 15...25
	puts "Warm weather"
when 25...50
	puts "Hot weather"
end

