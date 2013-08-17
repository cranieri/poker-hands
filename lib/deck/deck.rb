module Deck
class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def create_cards
    ::Deck::Cards::VALUES.each do |value|
      ::Deck::Cards::SUITS.each do |suit|
        @cards << {value: value, suit: suit}
      end
    end
  end
end
end