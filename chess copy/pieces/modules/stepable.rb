module Stepable

  def moves
    available_moves = []
    x, y = @pos
    if move_diffs == 'king'
      increment = [[1,-1],[1,1],[1,0],[-1,0],[-1,1],[0,1],[0,-1],[-1,0]]
    elsif move_diffs == 'knight'
      increment = [[1,-2],[1,2],[-1,2],[-1,-2],[-2,1],[2,1],[2,-1],[-2,-1]]
    end
    increment.each do |dx|
      available_moves << [x + dx[0], y + dx[1]] unless empty?([x + dx[0], y + dx[1]])
    end
    available_moves
  end
  
  def move_diffs
    raise 'move_diffs is not defined'
  end

end
