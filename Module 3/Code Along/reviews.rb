lines = []

File.open("reviews.txt") do |review_file|
    lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| lines.include?("Truncated") }