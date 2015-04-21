def stock_picker(stock_prices)
	buy_position = 0
	sell_position = 0
	highest_increase = 0
	
	price_day_map = Hash.new(0)
	
	stock_prices.each do |price|
		price_day_map[price] = stock_prices.index(price)
	end
	
	price_low_to_high = price_day_map.sort
	price_high_to_low = price_low_to_high.reverse
	
	# puts price_day_map.inspect}
	puts "The lowest price, day: #{price_low_to_high.inspect}"
	puts "The highest price, day: #{price_high_to_low.inspect}"
	
	price_low_to_high.each do |price, day|
		# print day.to_s + " "
		# puts "On day #{day} the price is #{price}"
	end
	
	print "\n"
	
	# print price_high_to_low.max
	puts price_high_to_low.max[0]
	puts price_high_to_low[0][1]
	
	while(price_high_to_low.max[0]) == (price_high_to_low[0][0]) do
		price_high_to_low = price_high_to_low[1..-1]
		print price_high_to_low.inspect
	end
end

# stock_picker([3,6,9,15,8,6,1,10])
# stock_picker([35,1,2,3,4,5,8,9,9, 1])
stock_picker([35,10,9,8,7,6,5,4,5,3,2,1])