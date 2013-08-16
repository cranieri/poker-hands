class Rank
  def initialize(hand)
    @hand = hand
  end

  def only_values
    @hand.rank.map { |hand| hand[:value]}
  end
end