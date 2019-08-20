require_relative "../piece"
require_relative "modules/stepable"
class Knight < Piece
  include Stepable
  SYMBOL = '♘', '♞'
    
    def move_diffs
      return 'knight'
    end

end