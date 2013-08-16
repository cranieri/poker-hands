class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def create_cards
    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        @cards << {value: value, suit: suit}
      end
    end
  end
end