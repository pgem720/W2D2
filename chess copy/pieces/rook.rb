require_relative "../piece"
# require_relative "./piece/board"
require_relative "modules/slideable"
class Rook < Piece
  include Slideable
  SYMBOL = '♖', '♜'

    def move_dirs
      'horizontal'
    end

end