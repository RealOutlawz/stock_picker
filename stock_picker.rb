
def stock_picker(array)
  best_profit = 0
  best_sell = 0
  best_buy = 0

  array.each_with_index do |val, idx|
    puts "#{idx} is the outer index and it's value is #{val}"
    temp_val = idx+1
    (temp_val..array[-1]).each do |temp_idx|
      puts "#{temp_idx} is the inner index"
    end
  end
  
  puts best_buy
  puts best_sell
  puts best_profit
end



stock_picker([17,3,6,9,15,8,6,1,10])

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.