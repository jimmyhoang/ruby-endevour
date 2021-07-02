def customized_list_of_multiples(multiples_of, size)
    list = Array.new(size)
    if block_given?
        yield
    else
        list
    end
end