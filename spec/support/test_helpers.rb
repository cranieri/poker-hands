module TestHelpers
  def high_card
    [{:value=>"2", :suit=>"D"},
              {:value=>"5", :suit=>"H"},
              {:value=>"4", :suit=>"D"},
              {:value=>"3", :suit=>"D"},
              {:value=>"8", :suit=>"D"}]
  end

  def pair
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"4", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"8", :suit=>"D"}]
  end

  def two_pairs
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"9", :suit=>"H"},
     {:value=>"9", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def three_of_a_kind
    [{:value=>"2", :suit=>"D"},
     {:value=>"2", :suit=>"H"},
     {:value=>"2", :suit=>"H"},
     {:value=>"9", :suit=>"S"},
     {:value=>"8", :suit=>"D"}]
  end

  def straight
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"H"},
     {:value=>"4", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"6", :suit=>"D"}]
  end

  def flush
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"8", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"6", :suit=>"D"}]
  end

  def full_house
    [{:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"H"},
     {:value=>"5", :suit=>"S"},
     {:value=>"5", :suit=>"D"}]
  end

  def four_of_a_kind
    [{:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"4", :suit=>"H"},
     {:value=>"4", :suit=>"S"},
     {:value=>"5", :suit=>"D"}]
  end

  def straight_flush
    [{:value=>"2", :suit=>"D"},
     {:value=>"3", :suit=>"D"},
     {:value=>"4", :suit=>"D"},
     {:value=>"5", :suit=>"D"},
     {:value=>"6", :suit=>"D"}]
  end



end
