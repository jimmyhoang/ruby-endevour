def get_input
    print "How much change is owed? $"
    input = gets.to_f
    input
end

def calculate_change(amount)
    denominations = [200, 100, 25, 10, 5, 1]
    change = []

    denominations.each { |denom| 
        while amount >= denom
            amount -= denom
            change << denom
        end
    }

    pennies = change.count(1)
    change = change.reject! { |x| x == 1 }
    change << 5 unless pennies < 3
    change

end

def convert_to_cents(dollar)
    dollar * 100
end

owed = get_input

until owed.is_a?(Float) && owed.positive?
    owed = get_input
end

owed = convert_to_cents(owed)

change_amount = calculate_change(owed)
puts change_amount