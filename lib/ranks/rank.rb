class Rank
  include Comparable
  def initialize(hand)
    @hand = hand
  end

  def only_values
    @hand.hand.map { |hand| hand[:value]}
  end

  def <=>(hand)
    hand_1 = @hand.only_values.sort.join('').to_i
    hand_2 = hand.only_values.sort.join('').to_i
    hand_1 <=> hand_2
  end

end