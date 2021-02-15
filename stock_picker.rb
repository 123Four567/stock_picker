def stock_picker(stock)
	sell_price = 0
	buy_price = 0
	change_buy_index = true
	arr = []
	max_profit = 0
	stock.each_with_index do |item,idx|
		buy_price = stock[idx] if change_buy_index == true
		sell_price = stock[idx + 1] if stock[idx + 1] != nil
		arr.push sell_price
		change_buy_index = false if buy_price < sell_price
		temp_profit = sell_price - buy_price
		max_profit = temp_profit if temp_profit > max_profit
	end
	p [buy_price,arr.max]
end

stock_picker([17,3,6,9,15,8,6,1,10])