module TestHelpers
  def high_card
    [{:value=>"2", :suit=>"D"},
     {:value=>"5", :suit=>"H"},
     {:value=>"4", :suit=>"D"},
     {:value=>"7", :suit=>"D"},
     {:value=>"8", :suit=>"D"}]
  end

  def high_card_same_highest_1
    [{:value=>"2", :suit=>"D"},
     {:value=>"5", :suit=>"H"},
     {:value=>"4", :suit=>"D"},
     {:value=>"7", :suit=>"D"},
     {:value=>"8", :suit=>"D"}]
  end

  def high_card_same_highest_2
    [{:value=>"2", :suit=>"D"},
     {:value=>"5", :suit=>"H"},
     {:value=>"4", :suit=>"D"},
     {:value=>"6", :suit=>"D"},
     {:value=>"8", :suit=>"D"}]
  end

  def hand_high_card_same_highest
    [Hand.new(high_card_same_highest_1),
     Hand.new(high_card_same_highest_2)]
  end

  def pair
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"4", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"8", :suit=>"D"}]
  end

  def same_pair_1
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"3", :suit=>"S"},
     {:value=>"5", :suit=>"D"},
     {:value=>"8", :suit=>"D"}]
  end

  def same_pair_2
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"3", :suit=>"S"},
     {:value=>"4", :suit=>"D"},
     {:value=>"7", :suit=>"D"}]
  end

  def hand_same_pair
    [Hand.new(same_pair_1),
     Hand.new(same_pair_2)]
  end

  def two_pairs
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"9", :suit=>"H"},
     {:value=>"9", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def same_two_pair_1
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"9", :suit=>"H"},
     {:value=>"9", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def same_two_pair_2
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"9", :suit=>"H"},
     {:value=>"9", :suit=>"S"},
     {:value=>"6", :suit=>"D"}]
  end

  def hand_same_two_pairs
    [Hand.new(same_pair_1),
     Hand.new(same_pair_2)]
  end

  def three_of_a_kind
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"2", :suit=>"H"},
     {:value=>"9", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def same_three_of_a_kind_1
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"2", :suit=>"H"},
     {:value=>"6", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def same_three_of_a_kind_2
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"2", :suit=>"H"},
     {:value=>"7", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def hand_some_three_of_a_kind
    [Hand.new(same_three_of_a_kind_1),
     Hand.new(same_three_of_a_kind_2)]
  end

  def straight
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"H"},
     {:value=>"4", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"6", :suit=>"D"}]
  end

  def same_stright_1
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"H"},
     {:value=>"4", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"6", :suit=>"D"}]
  end

  def same_stright_2
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"H"},
     {:value=>"4", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def hand_same_straight
    [Hand.new(same_stright_1),
     Hand.new(same_stright_2)]
  end

  def flush
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"8", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"6", :suit=>"D"}]
  end

  def flush_1
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"8", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"6", :suit=>"D"}]
  end

  def flush_2
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"6", :suit=>"D"}]
  end

  def hand_two_flush
    [Hand.new(same_stright_1),
     Hand.new(same_stright_2)]
  end

  def full_house
    [{:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"5", :suit=>"D"}]
  end

  def same_full_house_1
    [{:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"H"},
     {:value=>"3", :suit=>"S"},
     {:value=>"3", :suit=>"D"}]
  end

  def same_full_house_2
    [{:value=>"5", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"5", :suit=>"H"},
     {:value=>"2", :suit=>"S"},
     {:value=>"2", :suit=>"D"}]
  end

  def hand_same_full_house
    [Hand.new(same_full_house_1),
     Hand.new(same_full_house_2)]
  end

  def four_of_a_kind
    [{:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"H"},
     {:value=>"4", :suit=>"S"},
     {:value=>"5", :suit=>"D"}]
  end

  def same_four_of_a_kind
    [{:value=>"5", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"5", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"6", :suit=>"D"}]
  end

  def hand_same_four_of_a_kind
    [Hand.new(four_of_a_kind),
     Hand.new(same_four_of_a_kind)]
  end

  def straight_flush
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"6", :suit=>"D"}]
  end

  def straight_flush_2
    [{:value=>"2", :suit=>"S"},
     {:value=>"3", :suit=>"S"},
     {:value=>"4", :suit=>"S"},
     {:value=>"6", :suit=>"S"},
     {:value=>"8", :suit=>"S"}]
  end

  def hand_two_straight_flush
    [Hand.new(straight_flush),
     Hand.new(straight_flush_2)]
  end

  def hand_straight_flush
    [Hand.new(straight_flush),
     Hand.new(four_of_a_kind),
     Hand.new(full_house),
     Hand.new(flush),
     Hand.new(straight),
     Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_four_of_a_kind
    [Hand.new(four_of_a_kind),
     Hand.new(full_house),
     Hand.new(flush),
     Hand.new(straight),
     Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_full_house
    [Hand.new(full_house),
     Hand.new(flush),
     Hand.new(straight),
     Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_flush
    [Hand.new(flush),
     Hand.new(straight),
     Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_flush
    [Hand.new(flush),
     Hand.new(straight),
     Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_straight
    [Hand.new(straight),
     Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_three_of_a_kind
    [Hand.new(three_of_a_kind),
     Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_two_pairs
    [Hand.new(two_pairs),
     Hand.new(pair)]
  end

  def hand_pair
    [Hand.new(pair),
     Hand.new(high_card)]
  end

  def hand_high_card
    [Hand.new(high_card)]
  end


end
