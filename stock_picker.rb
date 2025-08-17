
def stock_picker(array)
  best_profit = 0
  best_sell = 0
  best_buy = 0


  array.each_with_index do |val, idx|
    puts "#{val} is the current buy variable?"
    temp_array.each_with_index do |temp_val, temp_idx|
      puts "#{temp_val} is the current sell variable?"
      if val - temp_val > best_profit
        best_buy = idx
        best_sell = temp_idx
        best_profit = val - temp_val
        puts "the best profit is currently: #{best_profit}"
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