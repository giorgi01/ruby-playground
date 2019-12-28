class ConsonantFinder
	
	include Enumerable
	def initialize(string)
		@string = string
	end
	def each
		@string.scan(/[^aeiou]/) do |consonant|
		yield consonant
		end
	end
end

cf = ConsonantFinder.new("the quick brown fox jumped")
puts cf.inject(:+)
