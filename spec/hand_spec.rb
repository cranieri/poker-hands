require 'spec_helper'

describe Hand do

  describe ".new" do
    context "the hand is a high card" do
      let(:hand) { Hand.new(high_card)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq HighCard
      end
    end

    context "the hand is a pair" do
      let(:hand) { Hand.new(pair)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Pair
      end
    end

    context "the hand is two pairs" do
      let(:hand) { Hand.new(two_pairs)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq TwoPairs
      end
    end

    context "the hand is three of a kind" do
      let(:hand) { Hand.new(three_of_a_kind)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq ThreeOfAKind
      end
    end

    context "the hand is straight" do
      let(:hand) { Hand.new(straight)}
      it "creates a high card hand" do
        expect(hand.rank.class).to eq Straight
      end
    end

    context "the hand is a flush" do
      let(:hand) { Hand.new(flush)}
      it "creates a flush hand" do
        expect(hand.rank.class).to eq Flush
      end
    end

    context "the hand is a full house" do
      let(:hand) { Hand.new(full_house)}
      it "creates a flush full house" do
        expect(hand.rank.class).to eq FullHouse
      end
    end

    context "the hand is a four of a kind" do
      let(:hand) { Hand.new(four_of_a_kind)}
      it "creates a four of a kind full house" do
        expect(hand.rank.class).to eq FourOfAKind
      end
    end

    context "the hand is a straight flush" do
      let(:hand) { Hand.new(straight_flush)}
      it "creates a four of a straight flush" do
        expect(hand.rank.class).to eq StraightFlush
      end
    end


  end
end

