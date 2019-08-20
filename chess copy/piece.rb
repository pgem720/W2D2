

class Piece
  # attr_reader :piece
  
  def initialize(board, color, pos)
    @board = board
    @color = color
    @pos = []
  end

  def to_s
  end

  def empty?(pos)
    x,y = pos
    @board.row[x][y] == @null
  end

  def valid_moves(pos)
    x,y = pos
    x.between(0..7) && y.between(0..7)
  end

  def pos=(val)
  end

  def symbol
  end

  def move_into_check?(end_pos)
  end

end