N, Q = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
LR = Q.times.map{gets.chomp.split.map(&:to_i)}

# N, Q = 10, 5
# N = 10
# Q = 5
# A = [8, 6, 9, 1, 2, 1, 10, 100, 1000, 10000]
# LR = [[2, 3], [1, 4], [3, 9], [6, 8], [1, 10]]

result = []

sum_array = Array.new(N+1, 0)
sum_array[1] = A[0]
(2..N).each do |i|
    sum_array[i] = (sum_array[i-1] + A[i-1].to_i)
end
# print(sum_array)
# print(LR)

Q.times do |i|
    start_day = LR[i][0]-1
    end_day = LR[i][1]
    tmp = sum_array[end_day] - sum_array[start_day]
    result << tmp
end

puts result