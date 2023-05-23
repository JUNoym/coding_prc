# 入力を受け取る
n = 5
# n = gets.chomp.to_i

# 計算の舞台となる配列の定義
# 全体を 0 で初期化する
t = Array.new(n+1, 0)

# 初期値の設定
t[0] = 1

# 順に計算していく
(1..n).each do |i|
  t[i] += t[i-1] if i-1 >= 0
  t[i] += t[i-2] if i-2 >= 0
  t[i] += t[i-3] if i-3 >= 0
end

# 結果を出力
# puts t[n]
print(t)
