class Hand
  include RankSelector
  include Comparable

  attr_reader :hand, :rank

  def initialize(hand)
    @hand = hand
    @rank = select_rank
  end

  def only_values
    @hand.map { |hand| hand[:value]}
  end

  private

  def select_rank
    return StraightFlush.new(self) if is_straight_flush?
    return FourOfAKind.new(self) if is_four_of_a_kind?
    return FullHouse.new(self) if is_full_house?
    return Flush.new(self) if is_flush?
    return Straight.new(self) if is_straight?
    return ThreeOfAKind.new(self) if is_three_of_a_kind?
    return TwoPairs.new(self) if is_two_pairs?
    return Pair.new(self) if is_pair?
    HighCard.new(self)
  end

  def <=>(hand)
    self.rank <=> hand.rank
  end



end