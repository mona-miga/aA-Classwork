require_relative 'slideable'

class Rook < Piece

  include Slideable
  attr_reader :symbol
  def initialize
    super
    @symbol = :R

  end

  def move_dirs
    horizontal_dirs
  end

end