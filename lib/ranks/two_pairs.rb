class TwoPairs < Rank
  SCORE = 3

  def <=>(hand)
    (@hand.only_values - hand.only_values).max <=> (hand.only_values - @hand.only_values).max
  end

end