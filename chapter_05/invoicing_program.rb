def refund(prices)
    amount = 0
    index = 0 
    while index < (prices.length)
        amount -= prices[index]
        index += 1
    end 
    format("%.2f", amount).to_f
end

def discount(prices)
    index = 0 
    while index < (prices.length)
        amount_off = prices[index] / 3
        puts format("Discount: $%.2f", amount_off)
        index += 1
    end 
end

def total(prices)
    amount = 0
    index = 0 
    while index < (prices.length)
        amount += prices[index]
        index += 1
    end 
    format("%.2f", amount).to_f
end
