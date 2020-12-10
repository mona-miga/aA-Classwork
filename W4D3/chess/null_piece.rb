require 'singleton'

class NullPiece < Piece
  include Singleton 
  attr_reader :symbol
  def initialize
    @symbol = :X
  end

end