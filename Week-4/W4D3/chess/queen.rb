require_relative 'slideable'
class Queen < Piece
  include Slideable
  attr_reader :symbol
  def initialize
    super
    @symbol = :Q

  end

  def move_dirs
    diagonal_dirs.concat(horizontal_dirs)
  end

end