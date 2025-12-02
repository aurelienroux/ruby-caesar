# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days
# representing the best day to buy and the best day to sell.
# Days start at 0.

def stockpicker prices_array
  lowest_price = prices_array[0]
  lowest_index = 0

  best_profit = 0
  best_buy_day = 0
  best_sell_day = 0

  prices_array.each_with_index { |price, index|
    if price < lowest_price
      lowest_price = price
      lowest_index = index
    end

    profit = price - lowest_price

    if profit > best_profit
      best_profit = profit
      best_buy_day = index
      best_sell_day = lowest_index
    end
  }

  print [best_sell_day,best_buy_day]
end

stockpicker([17,3,6,9,15,8,6,1,10])