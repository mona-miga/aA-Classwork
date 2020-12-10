require_relative 'slideable'

class Bishop < Piece
  include Slideable
  attr_reader :symbol
  def initialize
    super
    @symbol = :B

  end

  def move_dirs
    diagonal_dirs
  end

end