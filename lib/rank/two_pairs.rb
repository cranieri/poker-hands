require 'rank/hand_rank'
module Rank
class TwoPairs < HandRank
  SCORE = 3

  def <=>(hand)
    (@hand.only_values - hand.only_values).max <=> (hand.only_values - @hand.only_values).max
  end
end
end