# # 入力
# D = gets.to_i
# N = gets.to_i

D = 8
N = 5
# L = [2, 3, 5, 3, 1]
# R = [3, 6, 7, 7, 5]
L = Array.new(N, 0)
R = Array.new(N, 0)

(1..N).each do |i|
	L[i], R[i] = gets.split.map(&:to_i)
end

# 前日比に加算
B = Array.new(D+2, 0)
(1..N).each do |i|
	B[L[i]] += 1
	B[R[i]+1] -= 1
end

# 累積和をとる
Answer = Array.new(D+2)
Answer[0] = 0
(1..D).each do |d|
	Answer[d] = Answer[d - 1] + B[d]
end

# 出力
(1..D).each do |d|
	puts Answer[d]
end
