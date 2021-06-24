def total(prices)
    amount = 0
    prices.each do |price|
        amount += price
    end
    amount
end

def refund(prices)
    amount = 0
    prices.each do |price|
        amount -= price
    end
    amount
end

def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)


# Which version of the code do you like better - the code in the last commit (page 165) or the previous one (page 164)? Why?
# I like the code on page 164 more, there is repeating code but at least it's more readable than the one on page 165.  The new method on page 165 also 
# depends on the user not making an typos when calling the method, which increases the probability of errors

# Is there ever a good reason to repeat yourself in code (i.e. not have DRY code)? Give an example that justifies your answer.
# Even though I like the code on page 164 more, I don't believe there is a good reason to not have DRY code, the execution of page 165 was just bad.
# Repeating code is not scalable, it may be easy when projects are small but if projects get bigger and mroe people work on the code, it will be incredibly
# difficult to change all occurences of a piece of code that needs to be changed instead of just changing a single method