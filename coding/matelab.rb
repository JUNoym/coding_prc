mat = [[1,2,3],[1,2,3]]
r = 3
c = 2

def matrix_reshape(mat, r, c)
    m = mat.length
    n = mat[0].length
    
    # reshape操作が可能かどうかを確認
    return mat if m * n != r * c
    
    # 元の行列を1次元配列にフラット化
    flat_matrix = mat.flatten
    
    # 新しい行列の初期化
    reshaped_matrix = Array.new(r) { Array.new(c) }
  
    (0...r).each do |i|
      (0...c).each do |j|
          reshaped_matrix[i][j] = flat_matrix[i * c + j]
      end
     end
    
    reshaped_matrix
end
result = matrix_reshape(mat, r, c)
print(result)


