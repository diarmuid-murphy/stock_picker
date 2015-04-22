def stock_picker(stock_prices)
	best_buy = 0
	best_sell = 0
	max_profit = 0
	
	(0..(stock_prices.length - 2)).each do |buy_date|
		((buy_date + 1)..stock_prices.length - 1).each do |sell_date|
			
			price_difference = stock_prices[sell_date] - stock_prices[buy_date]
			
			if price_difference > max_profit
				best_buy = buy_date
				best_sell = sell_date
				max_profit = price_difference
			end
		end
	end
	
	puts [best_buy, best_sell].inspect
	puts "For a profit of $#{stock_prices[best_sell]} - $#{stock_prices[best_buy]} == $#{max_profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
# stock_picker([35,1,2,3,4,5,8,9,9, 1])
# stock_picker([35,10,9,8,7,6,5,4,5,3,2,1])