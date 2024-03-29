def stock_picker(hist_prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0
  hist_prices.each_with_index do |b_price, b_idx| # buy price and index
    hist_prices[b_idx..].each_with_index do |s_price, s_idx| # sell price and index
      if s_price - b_price > max_profit
        max_profit = s_price - b_price
        buy_day = b_idx
        sell_day = b_idx + s_idx
      end
    end
  end
  [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12
