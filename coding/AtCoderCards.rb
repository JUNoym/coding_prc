# S = gets.chomp.split('')
# T = gets.chomp.split('')

# s_hash = {}
# t_hash = {}

# # @が存在しない場合
# if S.include?('@') == false && T.include?('@') == false
#     S.each do |s|
#         if s_hash[s] == nil
#             s_hash[s] = 1
#         else
#             s_hash[s] += 1
#         end
#     end
    
#     T.each do |t|
#         if t_hash[t] == nil
#             t_hash[t] = 1
#         else
#             t_hash[t] += 1
#         end
#     end

#     if s_hash == t_hash
#         puts "Yes"
#     else
#         puts "No"
#     end
# else
#     # puts "@が含まれる"
#     atcoder = ['a', 't', 'd', 'o', 'd', 'e', 'r']
#     if S.count('@') == T.cuont('@')
#         puts "Yes"

#     else
#         puts "No"
#     end

# end





# # print(s_hash)
# # puts " "
# # print(t_hash)

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# s = gets.chomp
# t = gets.chomp

s = 'ab@'
t = '@bc'
s_count = {}
t_count = {}

s.each_char do |c|
  s_count[c] ||= 0
  s_count[c] += 1
end

# each_charメソッドは、文字列の各文字に対してブロックを実行するメソッドです。
# 例えば、"abcde".each_char { |c| print c, ' ' }とすると、
# a b c d eという文字が順番に出力されます。
# このメソッドは、Stringクラスのインスタンスメソッドです。



t.each_char do |c|
  t_count[c] ||= 0
  t_count[c] += 1
end

s_count["@"] ||= 0
t_count["@"] ||= 0
# このコードは、t_count["@"]がnilの場合、0を代入するという意味です。
# つまり、t_count["@"]がnilの場合、t_count["@"] = 0と同じ意味になります。



("a".."z").each do |c|
  s_count[c] ||= 0
  t_count[c] ||= 0

  if s_count[c] != t_count[c]
    unless "atcoder".include?(c)
      puts "No"
      exit
    end

    if s_count[c] > t_count[c]
      if s_count[c] - t_count[c] > t_count["@"]
        puts "No"
        exit
      else
        t_count["@"] -= s_count[c] - t_count[c]
      end
    else
      if t_count[c] - s_count[c] > s_count["@"]
        puts "No"
        exit
      else
        s_count["@"] -= t_count[c] - s_count[c]
      end
    end
  end
end

puts "Yes"




























