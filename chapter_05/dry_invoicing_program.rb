def refund(prices)
    amount = 0
    prices.each{|price| amount -= prices}
    format("%.2f", amount).to_f
end

def discount(prices)
    prices.each {|price| puts format("Discount: $%.2f", price/3) }
end

def total(prices)
    amount = 0
    prices.each {|price| amount += price}
    format("%.2f", amount).to_f
end
