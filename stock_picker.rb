def stock_picker(array)
  best_profit = 0
  sell_date= 0
  buy_date = 0

  array.each_with_index do |outer_value, outer_index| # iterates over each element in the array
    (outer_index + 1...array.length).each do |inner_index| # the range of the loop is from outer index + 1 to the end of the array
      inner_value = array[inner_index] 
      profit = inner_value - outer_value 
      if profit > best_profit
        buy_date = outer_index
        sell_date = inner_index
        best_profit = profit
      end
    end
  end
  
  result = [buy_date, sell_date]
  print result
end

stock_picker([17,3,6,9,15,8,6,1,10])