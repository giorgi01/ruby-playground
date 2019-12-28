module ProductAddable

	def products
		@products_list ||= [] #თუ observer_list არ არსებობს ვქმნით
	end
	def add_product(obj)
		add_product << obj
	end
	def notify_products
		products.each {|product| product.update }
	end
end

