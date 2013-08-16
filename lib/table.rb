class Table
  attr_accessor :hands

  def initialize
    @hands = []
  end

  def winner
    @hands.sort { |a, b| a.rank.class::SCORE <=> b.rank.class::SCORE }
  end

  def <<(hand)
    @hands << hand
  end
end