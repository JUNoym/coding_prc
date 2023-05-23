require 'set'

arr = [1,11,1,2,2,2,11,1,2,3,3,4,4,1,1,4,4,3,4,44,1,4,4,33,4]
# 上記のarrから重複を削除した配列を作成せよ
# ただし、出現順に並べること

# 期待する結果
# [1,11,2,3,4,44,33]

# 以下に回答を記載
# print(arr.uniq.sort)

result = Set.new(arr).to_a   
# print(result)
# result = result.to_a
# print(result)
result.each do |i|
    puts i
end