class PokerController < ApplicationController
  def index
    deck = ::Deck.new
    deck.create_cards
    @cards = deck.cards
    @table = ::Table.new

    #(0..10).each do |n_hand|
    #  @table << Hand.new(create_random_hand(@cards))
    #end

    @table << Hand.new([{:value=>"2", :suit=>"D"}, {:value=>"2", :suit=>"D"}, {:value=>"2", :suit=>"D"}, {:value=>"8", :suit=>"C"}, {:value=>"9", :suit=>"C"}])

  end

  private

  def create_random_hand(cards)
    (0..4).map { cards.sample }
  end

end
