require_relative "../piece"

require_relative "modules/slideable"
class Queen < Piece
  include Slideable
  SYMBOL = '♕', '♛'
    
    def move_dirs
      'horizontal & diagonal'
    end

end