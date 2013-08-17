require 'rank/hand_rank'
module Rank
class Pair < HandRank
  SCORE = 2

  def <=>(hand)
    hand_1 = @hand.only_values
    hand_2 = hand.only_values
    first_value = hand_1.detect { |hd| hand_1.count(hd) == 2}
    second_value = hand_2.detect { |hd| hand_2.count(hd) == 2}
    hand_1.delete_if { |card| card == first_value }
    hand_2.delete_if { |card| card == second_value }
    hand_1 <=> hand_2
  end
end
end