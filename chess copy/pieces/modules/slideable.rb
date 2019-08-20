module Slideable
  HORIZONTAL_DIRS = [[0,-1], [0,1], [1,0], [-1,0]]
  DIAGONAL_DIRS = [[1,1], [-1,-1], [1,-1], [-1,1]]
  
  def horizontal_dirs
    available_horizontal = []
    HORIZONTAL_DIRS.each do |row|
      row.each do |incrementer|
        dx, dy = incrementer
        available_horizontal << row_unblocked_moves_in_dir(dx, dy)
      end
    end
    available_horizontal
  end

  def diagonal_dirs
    available_diagonal = []
    DIAGONAL_DIRS.each do |row|
      row.each do |incrementer|
        dx, dy = incrementer
        available_diagonal << row_unblocked_moves_in_dir(dx, dy)
      end
    end
    available_diagonal
  end

  def moves
    if move_dirs == 'horizontal'
      return horizontal_dirs
    elsif move_dirs == 'diagonal'
      return diagonal_dirs
    else 
      return horizontal_dirs + diagonal_dirs
    end
  end

  def move_dirs
    raise 'move_dirs is not defined'
    #refers to moves_dirs in subclass to check whether piece can move horizontal diagnol or both
    #raises error if not properly written
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    unblocked_moves = []
    a, b = @pos
    x = a + dx
    y = b + dy 
    while self.empty?([x,y]) && valid_moves([x,y])
      current_pos = @board[x][y] 
      unblocked_moves << current_pos
      x += dx
      y += dy
    end
    return unblocked_moves
    #checks for positions until blocked
  end
end  