require 'rank/hand_rank'
module Rank
class FullHouse < HandRank
  SCORE = 7

  def <=>(hand)
    first_value = @hand.only_values.detect { |hd| @hand.only_values.count(hd) == 3}
    second_value = hand.only_values.detect { |hd| hand.only_values.count(hd) == 3}
    first_value <=> second_value
  end
end
end