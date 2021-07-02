def customized_list_of_multiples(multiples_of, size)
    list = (1..size).to_a.map { |x| multiples_of * x}

    if block_given?
        list = yield(list) 
        print list
    else
        list
        print list
    end

end

customized_list_of_multiples(2, 4)

customized_list_of_multiples(5, 5) do |list| 
    list.map { |y| y * 10 }
end

customized_list_of_multiples(10, 6) do |list|
    list.map { |y| y / 2 }
end