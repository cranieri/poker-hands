class Table
  attr_accessor :hands

  def initialize
    @hands = []
  end

  def winner
  end

  def <<(hand)
    @hands << hand
  end
end