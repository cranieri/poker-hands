require 'spec_helper'

describe Table do
  describe "#winner" do
    let(:table) { Table.new}
    context "the table contains a straight flush as best hand" do
      context "there is only one straight flush hand" do
        before do
          table.hands = hand_straight_flush
        end
        it "return an array where the last element is a straight flush " do
          expect(table.winner.rank.class).to eq StraightFlush
        end
      end

      context "there are two straight flush hands" do
        before do
          table.hands = hand_two_straight_flush
        end
        it "return an array where the last element is the highest straight flush " do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.max).to eq "8"
        end
      end

    end

    context "the table contains a four of a kind as best hand" do
      context "there is one four of a kind hand" do
        before do
          table.hands = hand_four_of_a_kind
        end
        it "return an array where the last element is a four of a kind " do
          expect(table.winner.rank.class).to eq FourOfAKind
        end
      end

      context "there are two four of a kind hands" do
        before do
          table.hands = hand_same_four_of_a_kind
        end
        it "return an array where the last element is a four of a kind " do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.max).to eq "5"
        end
      end
    end

    context "the table contains a full house as best hand" do
      context "there is only one full house" do
        before do
          table.hands = hand_full_house
        end
        it "return an array where the last element is a full house hand " do
          expect(table.winner.rank.class).to eq FullHouse
        end
      end

      context "there are two full house hands" do
        before do
          table.hands = hand_same_full_house
        end
        it "return an array where the last element is highest full house " do
          only_val = Hand.new(table.winner.hand).only_values
          p only_val
          expect(only_val.max).to eq "5"
        end
      end

    end

    context "the table contains a flush as best hand" do
      context "there is only one flush hand" do
        before do
          table.hands = hand_flush
        end
        it "return an array where the last element is a flush " do
          expect(table.winner.rank.class).to eq Flush
        end
      end

      context "there is two one flush hand" do
        before do
          table.hands = hand_two_flush
        end
        it "return an array where the last element is the highest flush " do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.max).to eq "8"
        end
      end

    end

    context "the table contains a straight as best hand" do
      context "there is only one straight hand" do
        before do
          table.hands = hand_straight
        end
        it "return an array where the last element is a straight " do
          expect(table.winner.rank.class).to eq Straight
        end
      end

      context "there are two straight hands" do
        before do
          table.hands = hand_same_straight
        end
        it "return an array where the last element the highest straight" do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.last).to eq "8"
        end
      end

    end

    context "the table contains a three of a kind as best hand" do
      context "there is only one three of a kind hand" do
        before do
          table.hands = hand_three_of_a_kind
        end
        it "return an array where the last element is a three of a kind " do
          expect(table.winner.rank.class).to eq ThreeOfAKind
        end
      end

      context "there are two three of a kind hands" do
        before do
          table.hands = hand_some_three_of_a_kind
        end
        it "return an array where the last element is a three of a kind " do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.last).to eq "8"
        end
      end
    end

    context "the table contains a two pairs as best hand" do
      before do
        table.hands = hand_two_pairs
      end
      it "return an array where the last element is a two pairs  " do
        expect(table.winner.rank.class).to eq TwoPairs
      end

      context "the tables contains thw hands with same two pairs" do
        before do
          table.hands = hand_same_two_pairs
        end
        it "return an array where the last element is the two pairs with the highest remaining card" do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.last).to eq "8"
        end
      end
    end

    context "the table contains a pair as best hand" do
      context "the tables contains a unique pair hand" do
        before do
          table.hands = hand_pair
        end
        it "return an array where the last element is a pair  " do
          expect(table.winner.rank.class).to eq Pair
        end
      end

      context "the tables contains the hands with same pairs" do
        before do
          table.hands = hand_same_pair
        end
        it "return an array where the last element is the pair with the highest remaining card" do
          only_val = Hand.new(table.winner.hand).only_values
          expect(only_val.last).to eq "8"
        end
      end

    end

    context "the table contains a high card as best hand" do
      context "the highest cards have the same value" do
        before do
          table.hands = hand_high_card_same_highest
        end
        it "return an array where the last element is a high card with the next highest value" do
          only_val = Hand.new(table.winner.hand).only_values
          only_val.sort!
          expect(only_val[only_val.length - 2]).to eq "7"
        end
      end

      context "the highest card is unique" do
        before do
          table.hands = hand_high_card
        end
        it "return an array where the last element is a high card  " do
          expect(table.winner.rank.class).to eq HighCard
        end
      end

    end

  end
end
