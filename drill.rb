def spiral_matrix(matrix)
  h = matrix.size
  w = matrix[0].size
  
  
  move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
  now = 1
  y, x = 0, 0
  logs = [matrix[y][x]]
  matrix.flatten.size.times do
    ny = y + move[now % 4][0]
    nx = x + move[now % 4][1]
    if !(0 <= ny && ny <= h && 0 <= nx && nx <= w && logs.include?(matrix[ny][nx]))
      now += 1
      y += move[now % 4][0]
      x += move[now % 4][1]
      logs << matrix[y][x]
      next
    end
    y, x = ny, nx
    logs << matrix[y][x]
  end

  logs
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
puts spiral_matrix(matrix)