
class Piece 
  attr_accessor :color, :board, :position
  def initialize color, board, pos
    @color = color 
    @board = board  
    @position = [pos]
  end

  # def moves 
  #   self
  # end

  def to_s 

  end

  def empty?

  end

  def valid_moves
 # return false if @all_positions[next_pos]  # no need to add already seen pos 
    # cur_col, cur_row = cur_pos
    # next_col, next_row = next_pos
    # bool_1 = (next_col - cur_col).abs == 2 && (next_row - cur_row).abs == 1
    # bool_2 = (next_row - cur_row).abs == 2 && (next_col - cur_col).abs == 1
    # bool_1 || bool_2
  end

end