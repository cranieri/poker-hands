require 'deck/rank_selector'
module Deck
class Hand
  include ::Deck::RankSelector
  include Comparable

  attr_reader :cards, :rank

  def initialize(hand_cards)
    @cards = hand_cards
    @rank = select_rank
  end

  def only_values
    @cards.map { |card| card.value}
  end

  private

  def select_rank
    return Rank::StraightFlush.new(self) if is_straight_flush?
    return Rank::FourOfAKind.new(self) if is_four_of_a_kind?
    return Rank::FullHouse.new(self) if is_full_house?
    return Rank::Flush.new(self) if is_flush?
    return Rank::Straight.new(self) if is_straight?
    return Rank::ThreeOfAKind.new(self) if is_three_of_a_kind?
    return Rank::TwoPairs.new(self) if is_two_pairs?
    return Rank::Pair.new(self) if is_pair?
    Rank::HighCard.new(self)
  end

  def <=>(hand)
    self.rank <=> hand.rank
  end


end
end