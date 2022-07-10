def stock_picker(stocks)
  buy_index = 0
  sell_index = 0
  profit = 0
  
  stocks.each_with_index do |stock, index|
    sub_arr = stocks[index + 1..-1]    
    sub_arr.each_with_index do |substock, subindex|
      temp_profit = substock - stock
      if temp_profit >= profit
        buy_index = index
        sell_index = index + 1 + subindex
        profit = temp_profit
      end
    end
  end

  [buy_index, sell_index]
end


p stock_picker([17,3,6,9,15,8,6,1,10])