class PokerController < ApplicationController
  def index
    deck = ::Deck.new
    deck.create_cards
    @cards = deck.cards
    @table = ::Table.new

    (0..10).each do |n_hand|
      @table << Hand.new(create_random_hand(@cards))
    end

    @table << Hand.new([{:value=>"2", :suit=>"D"}, {:value=>"5", :suit=>"H"}, {:value=>"4", :suit=>"D"}, {:value=>"3", :suit=>"D"}, {:value=>"8", :suit=>"D"}])
     h1 = Hand.new([{:value=>"2", :suit=>"D"}, {:value=>"5", :suit=>"H"}, {:value=>"4", :suit=>"D"}, {:value=>"3", :suit=>"D"}, {:value=>"8", :suit=>"D"}])
     h2 = Hand.new([{:value=>"9", :suit=>"D"}, {:value=>"5", :suit=>"H"}, {:value=>"4", :suit=>"D"}, {:value=>"3", :suit=>"D"}, {:value=>"8", :suit=>"D"}])
     @arr = [h1, h2]
     @arr.sort!
     @winner = @table.winner.last.rank
  end

  private

  def create_random_hand(cards)
    (0..4).map { cards.sample }
  end

end
