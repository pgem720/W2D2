require_relative "../piece"

require_relative "modules/slideable"
class Bishop < Piece
  include Slideable
  SYMBOL = '♗', '♝'
    
    def move_dirs
      'diagonal'
    end

end