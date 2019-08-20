
available_moves = []

[1,2,-1,-2].each_with_index do |dx,i|
  [1,2,-1,-2].each_with_index do |dy,j|
      # [i+x,i2+y] if i + i2 != 0 && i + i2 != i*2 && i + x >= 0 && i + x <= 8 && i2 + y >= 0 && i2 + y <= 8 
     if !available_moves.include?([3 + dx, 6 + dy])
      available_moves << [3 + dx, 6 + dy]
     end
  end
end
p available_moves