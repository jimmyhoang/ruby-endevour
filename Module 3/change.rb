def get_input
    owed = 0
    until owed.is_a?(Float) && owed.positive?
        print "How much change is owed? $"
        owed = gets.to_f
    end
    owed
end

def calculate_change(amount)
    #convert to cents
    amount *= 100
    
    denominations = [200, 100, 25, 10, 5, 1]
    change = []

    denominations.each do |denom| 
        while amount >= denom
            amount -= denom
            change << denom
        end
    end

    # count the pennies in the change, remove them from the change, and then add a nickel depending on how many pennies were present
    pennies = change.count(1)
    change = change.delete_if { |x| x == 1 }
    change << 5 unless pennies < 3
    change
end

def output_change(change)
    total_coins = change.length
    output = [
        "#{change.count(200)} #{change.count(200) == 1 ? :"toonie" :"toonies"}",
        "#{change.count(100)} #{change.count(100) == 1 ? :"loonie" :"loonies"}",
        "#{change.count(25)} #{change.count(25) == 1 ? :"quarter" :"quarters"}",
        "#{change.count(10)} #{change.count(10) == 1 ? :"dime" :"dimes"}",
        "and #{change.count(5)} #{change.count(5) == 1 ? :"nickel" :"nickel"}"
    ]
    output = output.delete_if { |x| x.include?("0") }.join(', ')

    puts total_coins >= 1 ? :"You need to dispense #{output}" :"You don't need to dispense change"
    puts "Total coins: #{total_coins}"

end

owed = get_input
change_amount = calculate_change(owed)
output_change(change_amount)