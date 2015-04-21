def stock_picker(stock_prices)
	price_day_map = Hash.new(0)
	
	stock_prices.each do |price|
		price_day_map[price] = stock_prices.index(price)
	end
	
	price_low_to_high = price_day_map.sort
	price_high_to_low = price_low_to_high.reverse
	
	# puts price_day_map.inspect
	puts price_low_to_high.inspect
	puts price_high_to_low.inspect
	
	price_low_to_high.each do |price, day|
		puts price
		puts day
	end
end

stock_picker([17,3,6,9,15,8,6,1,10])