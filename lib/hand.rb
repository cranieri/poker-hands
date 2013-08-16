class Hand
  include RankSelector

  attr_reader :hand, :rank

  def initialize(hand)
    @hand = hand
    @rank = select_rank
  end

  def select_rank
    return StraightFlush.new(@hand) if is_straight_flush?
    return FourOfAKind.new(@hand) if is_four_of_a_kind?
    return FullHouse.new(@hand) if is_full_house?
    return Flush.new(@hand) if is_flush?
    return Straight.new(@hand) if is_straight?
    return ThreeOfAKind.new(@hand) if is_three_of_a_kind?
    return TwoPairs.new(@hand) if is_two_pairs?
    return Pair.new(@hand) if is_pair?
    HighCard.new(@hand)
  end

end