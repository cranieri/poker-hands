class Pair < Rank

  SCORE = 2

  def <=>(hand)
    (@hand.only_values - hand.only_values).index(max) <=> (hand.only_values - @hand.only_values).index(max)
  end

end