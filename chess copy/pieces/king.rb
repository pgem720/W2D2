require_relative "../piece"
require_relative "modules/stepable"
class King < Piece
  include Stepable
  SYMBOL = '♔', '♚'
    
    def move_dirs
      return 'knight'
    end

end