require 'deck/rank_selector'
module Deck
class Hand
  include Comparable

  attr_reader :cards

  def initialize(hand_cards)
    @cards = hand_cards
    @rank = nil
  end

  def only_values
    cards.map { |card| card.value}
  end

  def rank
    @rank ||= RankSelector.new(self).select_rank
  end

  private

  def <=>(hand)
    self.rank <=> hand.rank
  end


end
end