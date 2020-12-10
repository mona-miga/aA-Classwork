require_relative 'piece'
require_relative 'null_piece'

class Board 
  attr_accessor :board, :rows, :color, :not_piece
  def initialize 
    @not_piece = NullPiece.instance
    @rows = Array.new(8){Array.new(8, not_piece)}
    self.print
    self.pieces 
  end

  def [](pos)
    row,col = pos 
    @rows[row][col]
  end

  def []=(pos, val)
    row,col = pos 
    @rows[row][col] = val 
  end

  def move_piece(start_pos, end_pos)
    
    #return value from start_pos is the piece
    row,col = start_pos
    row_end, col_end = end_pos
    range = (0..8)
    if !range.include?(row) || !range.include?(col)|| !range.include?(row_end) || !range.include?(col_end)
     raise "selected move is out of range"      
    end
  
    piece = self[start_pos]
    # p piece.position
    end_pos_contents = self[end_pos]
    # self.[](end_pos) instructor comment non-syntactic sugary

    if piece.is_a?(NullPiece)
      raise "there is no piece to move"
    elsif end_pos_contents.is_a?(NullPiece) == false
      raise "You cannot move here, there is another piece!"
    else
      self[end_pos] = piece
      # self.[] = (end_pos, piece) instructor comment non-syntactic sugary
      piece.position = [end_pos]
      # end_pos_contents = piece.position
      self[start_pos] = @not_piece
      p "Move succesful"
    end
    piece.position
  end

   # determine if next_pos is an immediate viable move from cur_pos 
  def valid_pos?(cur_pos, next_pos)
   
  end

  def add_piece(piece, pos)
      row,col = pos  
      @rows[row][col] = piece
  end

  def checkmate?(color) 

  end

  def in_check?(color)   

  end

  def find_king(color)  

  end

  def pieces
    # make all pieces and place them on the board
    black_rook_0 = Piece.new(:B, @rows, [0,0])
    add_piece(black_rook_0, [0,0])
    black_rook_7 = Piece.new(:B, @rows, [0,7])
    add_piece(black_rook_7, [0,7])
    black_knight_1 = Piece.new(:B, @rows, [0,1])
    add_piece(black_knight_1, [0,1])
    black_knight_6 = Piece.new(:B, @rows, [0,6])
    add_piece(black_knight_6, [0,6])
    black_bishop_2 = Piece.new(:B, @rows, [0,2])
    add_piece(black_bishop_2, [0,2])
    black_bishop_5 = Piece.new(:B, @rows, [0,5])
    add_piece(black_bishop_5, [0,5])
    black_queen = Piece.new(:B, @rows, [0,3])
    add_piece(black_queen, [0,3])
    black_king = Piece.new(:B, @rows, [0,4])
    add_piece(black_king, [0,4])
    black_pawn_0 = Piece.new(:B, @rows, [1,0])
    add_piece(black_pawn_0, [1,0])
    black_pawn_1 = Piece.new(:B, @rows, [1,1])
    add_piece(black_pawn_1, [1,1])
    black_pawn_2 = Piece.new(:B, @rows, [1,2])
    add_piece(black_pawn_2, [1,2])
    black_pawn_3 = Piece.new(:B, @rows, [1,3])
    add_piece(black_pawn_3, [1,3])
    black_pawn_4 = Piece.new(:B, @rows, [1,4])
    add_piece(black_pawn_4, [1,4])
    black_pawn_5 = Piece.new(:B, @rows, [1,5])
    add_piece(black_pawn_5, [1,5])
    black_pawn_6 = Piece.new(:B, @rows, [1,6])
    add_piece(black_pawn_6, [1,6])
    black_pawn_7 = Piece.new(:B, @rows, [1,7])
    add_piece(black_pawn_7, [1,7])
    white_rook_0 = Piece.new(:W, @rows, [7,0])
    add_piece(white_rook_0, [7,0])
    white_rook_7 = Piece.new(:W, @rows, [7,7])
    add_piece(white_rook_7, [7,7])
    white_knight_1 = Piece.new(:W, @rows, [7,1])
    add_piece(white_knight_1, [7,1])
    white_knight_6 = Piece.new(:W, @rows, [7,6])
    add_piece(white_knight_6, [7,6])
    white_bishop_2 = Piece.new(:W, @rows, [7,2])
    add_piece(white_bishop_2, [7,2])
    white_bishop_5 = Piece.new(:W, @rows, [7,5])
    add_piece(white_bishop_5, [7,5])
    white_queen = Piece.new(:W, @rows, [7,4])
    add_piece(white_queen, [7,4])
    white_king = Piece.new(:W, @rows, [7,3])
    add_piece(white_king, [7,3])
    white_pawn_0 = Piece.new(:W, @rows, [6,0])
    add_piece(white_pawn_0, [6,0])
    white_pawn_1 = Piece.new(:W, @rows, [6,1])
    add_piece(white_pawn_1, [6,1])
    white_pawn_2 = Piece.new(:W, @rows, [6,2])
    add_piece(white_pawn_2, [6,2])
    white_pawn_3 = Piece.new(:W, @rows, [6,3])
    add_piece(white_pawn_3, [6,3])
    white_pawn_4 = Piece.new(:W, @rows, [6,4])
    add_piece(white_pawn_4, [6,4])
    white_pawn_5 = Piece.new(:W, @rows, [6,5])
    add_piece(white_pawn_5, [6,5])
    white_pawn_6 = Piece.new(:W, @rows, [6,6])
    add_piece(white_pawn_6, [6,6])
    white_pawn_7 = Piece.new(:W, @rows, [6,7])
    add_piece(white_pawn_7, [6,7])
  end

  def dup 

  end

  def print 
    @rows.each do |row|
      row.each do |el|
        if el.nil?
          p el 
        else    
          p el.color 
        end
      end
    end
    p "board done"
    true
  end

  def move_piece!(color, start_pos , end_pos)
    
  end

end

