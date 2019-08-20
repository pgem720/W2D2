require_relative "piece"
require 'singleton'

class Nullpiece < Piece
  include Singleton
  
  def initialize
    @piece = nil
    @moves = nil
    @symbol = nil
  end

end