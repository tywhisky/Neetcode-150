# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min_left = 100000
  result = 0

  prices.each_with_index do |price, index|
    min_left = [min_left, price].min
    result = [result, price - min_left].max
  end

  result
end
