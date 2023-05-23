# N の入力
N = 10

# 1 から N までの整数から 3 個選ぶ
counter = 0
(1..N).each do |i|
  (i + 1..N).each do |j|
    (j + 1..N).each do |k|
      counter += 1
    end
  end
end
puts counter
