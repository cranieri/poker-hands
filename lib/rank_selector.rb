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

  end

  def is_four_of_a_kind?

  end

  def is_full_house?

  end

  def is_straight_flush?

  end

end