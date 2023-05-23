# N, K = gets.chomp.split.map(&:to_i)
N = 3
K = 6
# N = 3, K = 6の場合
count = 0

(1..N).each do |i|
    (1..N).each do |j|
        target = K - i - j
        if target >= 1 and taeget <= N
            count += 1
        end
    end
end

print(count)