class Warehouse

	attr_reader :available_spaces, :warehouse_condition

	def initialize(spaces)
		@available_spaces = (spaces)
		@warehouse_condition = {}
	end

	def []=(*params)
		space_id, product = params
		@available_spaces -= 1
		@warehouse_condition[space_id] = product
	end

	def full?
		@available_spaces <= 0 ? true : false 
	end
end

s = Warehouse.new(100)
s[0] = 'Product1'
s[1] = 'Product2'
s[99] = 'Product3'
p s
puts s.full?
