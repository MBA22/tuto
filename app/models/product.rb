class Product < ActiveRecord::Base
	has_many :order_items
	validates_numericality_of :price

	def price=(input)
	  input.delete!("$")
	  super
	end
end
