require_relative 'product_addable'

class Invoice

	attr_reader :products_list

	include ProductAddable
	def initialize
		@products_list = []
	end
	def add_product(product)
		@products_list << product
	end
end
