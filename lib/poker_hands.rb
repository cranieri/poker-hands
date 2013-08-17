require 'deck/card'
require 'deck/cards'
require 'deck/deck'
require 'deck/hand'
require 'deck/rank_selector'
require 'rank/flush'
require 'rank/four_of_a_kind'
require 'rank/full_house'
require 'rank/high_card'
require 'rank/pair'
require 'rank/hand_rank'
require 'rank/straight'
require 'rank/straight_flush'
require 'rank/three_of_a_kind'
require 'rank/two_pairs'

class PokerHands
  attr_accessor :hands

  def initialize
    @hands = []
  end

  def winner
    sorted_hands = @hands.sort { |a, b| a.rank.class::SCORE <=> b.rank.class::SCORE }
    if sorted_hands.size > 1 && same_best_rank?(sorted_hands.reverse)
      find_winner_if_same_rank(sorted_hands.reverse)
    else
      sorted_hands.last
    end
  end

  def <<(hand)
    @hands << hand
  end

  private

  def same_best_rank?(rank)
    rank[0].rank.class == rank[1].rank.class
  end

  def find_winner_if_same_rank(sorted_hands)
    rank_class = sorted_hands.first.rank.class
    same_rank_hands = sorted_hands.select{|hand| hand.rank.class == rank_class}
    same_rank_hands.sort.last
  end
end