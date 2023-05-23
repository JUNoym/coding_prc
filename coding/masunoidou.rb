n, m = gets.chomp.split.map(&:to_i)

a = gets.chomp.split.map(&:to_i)

# マスiに辿り着くにはMつの方法がある M = 4の場合
# 2 4 7 8 6
# 0 4

# 8に辿り着くためには、4+7+8+6=25 または、4つ飛ばした場合は24秒かかるから一つずつ行くより早い
# print a
result = Array.new(n, 0)
result[1] = a[1]

(2..n).each do |i|
    (1..m).each do |j|
        # result[i] = [result[i-j] + m*a[i], a[i]+result[i-1]].min if i-j >= 0
        if i - j >= 0
            result[i] = [result[i - j] + (m * a[i]), a[i] + result[i - 1]].min
        end
    end
end


print result