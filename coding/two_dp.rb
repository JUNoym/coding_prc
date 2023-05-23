A1,A2,A3,A4 = gets.split.map(&:to_i)
# print(A1,A2,A3,A4)
result = Array.new(4, 0) { Array.new(4, 0) }
result[0][0] = A1
result[0][1] = A2
result[0][2] = A3
result[0][3] = A4
print(result)

(1..3).each do |i|
    (0..3).each do |j|
        if  j == 0
            result[i][j] = result[i-1][j] + result[i-1][j+1]
        elsif j == 3
            result[i][j] = result[i-1][j] + result[i-1][j-1]
        else
            result[i][j] = result[i-1][j-1] + result[i-1][j] + result[i-1][j+1]
        end
    end
end

print(result)