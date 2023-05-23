N = gets.chomp.to_i
# print(N)
result = Array.new(N, 0)


result[0] = 1
result[1] = 1
puts " "

(2...N).each do |i|
    result[i] += result[i-1] if i - 1 >= 0
    result[i] += result[i-2] if i - 2 >= 0
    result[i] += result[i-3] if i - 3 >= 0
end
print(result[-1])