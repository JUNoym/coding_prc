K, S = gets.chomp.split.map(&:to_i)
# 2, 2

count = 0

(0..K).each do |num|
    (0..K).each do |num2|
        target = S - num -num2
        if target >= 0 && target <= K
            count += 1
        end
    end
end

puts count