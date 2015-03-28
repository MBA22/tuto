module ProductsHelper
	def print_price(price)
	  number_to_currency (price)
	end

	def print_stock(stock)
	    text = stock > 0 ? "In Stock (#{stock})" : "Out Of stock"
	    css = stock > 0 ? "in_stock" : "out_stock"
	    content_tag :span, text , class:[css]
    end
end
