require 'spec_helper'
describe Deck::Hand do

  describe ".new" do
    context "the hand is a high card" do
      let(:hand) { Deck::Hand.new(high_card)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Rank::HighCard
      end
    end

    context "the hand is a pair" do
      let(:hand) { Deck::Hand.new(pair)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Rank::Pair
      end
    end

    context "the hand is two pairs" do
      let(:hand) { Deck::Hand.new(two_pairs)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Rank::TwoPairs
      end
    end

    context "the hand is three of a kind" do
      let(:hand) { Deck::Hand.new(three_of_a_kind)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Rank::ThreeOfAKind
      end
    end

    context "the hand is straight" do
      let(:hand) { Deck::Hand.new(straight)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Rank::Straight
      end
    end

    context "the hand is a flush" do
      let(:hand) { Deck::Hand.new(flush)}
      it "creates a flush hand" do
        expect(hand.rank.class).to eq Rank::Flush
      end
    end

    context "the hand is a full house" do
      let(:hand) { Deck::Hand.new(full_house)}
      it "creates a flush full house" do
        expect(hand.rank.class).to eq Rank::FullHouse
      end
    end

    context "the hand is a four of a kind" do
      let(:hand) { Deck::Hand.new(four_of_a_kind)}
      it "creates a four of a kind full house" do
        expect(hand.rank.class).to eq Rank::FourOfAKind
      end
    end

    context "the hand is a straight flush" do
      let(:hand) { Deck::Hand.new(straight_flush)}
      it "creates a four of a straight flush" do
        expect(hand.rank.class).to eq Rank::StraightFlush
      end
    end


  end
end

