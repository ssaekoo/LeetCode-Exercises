# Say you have an array for which the ith element is the price of a given stock on day i.
#
# If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

def max_profit(prices)
    my_max = 0
    min_price = Float::INFINITY

    (0...prices.length).each do |i|
        min_price = [min_price, prices[i]].min
        my_max = [my_max, prices[i] - min_price].max
    end
    my_max
end
