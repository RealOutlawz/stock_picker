def stock_picker(array)
  best_profit = 0
  best_sell = 0
  best_buy = 0

  array.each_with_index do |val, idx|
    (idx+1..array.last).each do |temp_idx|
      profit = val - array[temp_idx]
      if profit > best_profit
        best_buy = idx
        best_sell = temp_idx
        best_profit = profit
      end
    end
  end
  
  puts best_buy
  puts best_sell
  puts best_profit
end



stock_picker([17,3,6,9,15,8,6,1,10])

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.