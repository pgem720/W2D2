require_relative "piece"
require_relative "nullpiece"
require_relative 'pieces/require_pieces'
class Board
  attr_reader :rows
  
  def initialize
    @null = Nullpiece.instance
    @rows = Array.new(8) {Array.new(8, @null)} 
  end

  def place_pieces
    @rows[0][0] = Rook.new(@row, 'white', [[0][0]])
    @rows[0][7] = Piece.new('rook')
    @rows[7][0] = Piece.new('rook')
    @rows[7][7] = Piece.new('rook')

    @rows[0][1] = Piece.new('knight')
    @rows[0][7] = Piece.new('knight')
    @rows[7][1] = Piece.new('knight')
    @rows[7][6] = Piece.new('knight')

    @rows[0][2] = Piece.new('bishop')
    @rows[0][5] = Piece.new('bishop')
    @rows[7][2] = Piece.new('bishop')
    @rows[7][5] = Piece.new('bishop')
    
    @rows[0][5] = Piece.new('king')
    @rows[7][5] = Piece.new('king')
    @rows[0][4] = Piece.new('queen')
    @rows[7][4] = Piece.new('queen')
  
    i = 0
    while i < 8
      @rows[1][i] = Piece.new('pawn')
      @rows[6][i] = Piece.new('pawn')
      i += 1
    end
  end
  def print_board
     p @rows
  end

  # def move_piece(start_pos, end_pos)
  #   x,y = start_pos 
  #   if @rows[x][y] == @null
  #     raise 'there is no piece at that position'
  #   end
  
  #   j,k = end_pos 
  #   if @rows[j][k] != @null
  #     raise 'that position is already taken'
  #   end
  #   bishop




  #   # moving_piece = @rows[x][y]
  #   # @rows[x][y] = []
  #   # @rows[x][y] << @null
  #   # @rows[j][k] = []
  #   # @rows[j][k] << moving_piece

  # end

end

b = Board.new
b.place_pieces
# p b.rows[3][0]
# p b.rows[1][0]
b.print_board