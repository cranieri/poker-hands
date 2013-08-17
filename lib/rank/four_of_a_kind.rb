require 'rank/hand_rank'
module Rank
  class FourOfAKind < HandRank
    SCORE = 8

    def <=>(hand)
      first_value = @hand.only_values.detect { |hd| @hand.only_values.count(hd) == 4}
      second_value = hand.only_values.detect { |hd| @hand.only_values.count(hd) == 4}
      first_value <=> second_value
    end
  end
end