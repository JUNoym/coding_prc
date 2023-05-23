prices = [7,1,5,3,6,4]
def max_profit(prices)
    max_profit = 0
    min_price = prices[0]
    prices.each do |price|
        min_price = [price, min_price].min
        max_profit = [max_profit, price-min_price].max
    end
    return max_profit
end

print(max_profit(prices))