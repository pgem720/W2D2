require_relative "../piece"

class Pawn < Piece
  SYMBOL = '♙', '♟'
    
    def move_dirs
      x, y = @pos
      x = forward_dir + x  
    end
    
    def at_start_row?
       x, y = @pos
      if self.forward_dir == -1 && x == 6
        return false
      elsif self.forward_dir == 1 && x == 1
        return false
      else
        return true
      end
    end

    def forward_dir
      if @color == black
        -1
      else
        1
      end
    end

    # def forward_steps?
     

    def side_attacks

    end
end