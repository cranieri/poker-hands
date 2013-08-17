module Deck
module RankSelector

  def is_pair?
    only_value = @cards.map { |card| card.value}
    only_value.detect { |card| only_value.count(card) > 1}
  end

  def is_two_pairs?
    only_value = @cards.map { |card| card.value}
    first_value = only_value.detect { |card| only_value.count(card) == 2}
    if first_value
      only_value.delete(first_value)
      return only_value.detect { |card| only_value.count(card) == 2}
    end
    nil
  end

  def is_three_of_a_kind?
    only_value = @cards.map { |card| card.value}
    only_value.detect { |card| only_value.count(card) == 3}
  end

  def is_straight?
    only_value = @cards.map { |card| card.value}
    sorted_only_value = only_value.sort
    only_value === sorted_only_value
  end

  def is_flush?
    only_suits = @cards.map { |card| card.suit}
    only_suits.detect { |card| only_suits.count(card) == 5}
  end

  def is_full_house?
    only_value = @cards.map { |card| card.value}
    first_value = only_value.detect { |card| only_value.count(card) == 3}
    if first_value
      only_value.delete(first_value)
      return only_value.detect { |card| only_value.count(card) == 2}
    end
    nil
  end

  def is_four_of_a_kind?
    only_value = @cards.map { |card| card.value}
    only_value.detect { |card| only_value.count(card) == 4}
  end

  def is_straight_flush?
    only_suits = @cards.map { |card| card.suit}
    all_same_suit = only_suits.detect { |card| only_suits.count(card) == 5}

    only_value = @cards.map { |card| card.value}
    sorted_only_value = only_value.sort
    all_same_suit && only_value === sorted_only_value
  end
end
end