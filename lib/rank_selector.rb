module RankSelector

  def is_pair?
    only_value = @hand.map { |hand| hand[:value]}
    only_value.detect { |hand| only_value.count(hand) > 1}
  end

  def is_two_pairs?
    only_value = @hand.map { |hand| hand[:value]}
    first_value = only_value.detect { |hand| only_value.count(hand) > 1}
    if first_value
      only_value.delete(first_value)
      return only_value.detect { |hand| only_value.count(hand) > 1}
    end
    nil
  end

  def is_three_of_a_kind?
    only_value = @hand.map { |hand| hand[:value]}
    only_value.detect { |hand| only_value.count(hand) > 2}
  end

  def is_straight?
    only_value = @hand.map { |hand| hand[:value]}
    sorted_only_value = only_value.sort
    only_value === sorted_only_value
  end

  def is_flush?
    only_suits = @hand.map { |hand| hand[:suit]}
    only_suits.detect { |hand| only_suits.count(hand) == 5}
  end

  def is_full_house?
    only_value = @hand.map { |hand| hand[:value]}
    first_value = only_value.detect { |hand| only_value.count(hand) == 3}
    if first_value
      only_value.delete(first_value)
      return only_value.detect { |hand| only_value.count(hand) == 2}
    end
    nil
  end

  def is_four_of_a_kind?
    only_value = @hand.map { |hand| hand[:value]}
    only_value.detect { |hand| only_value.count(hand) == 4}
  end

  def is_straight_flush?
    only_suits = @hand.map { |hand| hand[:suit]}
    all_same_suit = only_suits.detect { |hand| only_suits.count(hand) == 5}

    only_value = @hand.map { |hand| hand[:value]}
    sorted_only_value = only_value.sort
    all_same_suit && only_value === sorted_only_value
  end

end