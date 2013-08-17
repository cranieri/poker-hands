# This file is copied to spec/ when you run 'rails generate rspec:install'
#ENV["RAILS_ENV"] ||= 'test'
#require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require 'deck/card'
require 'deck/cards'
require 'deck/deck'
require 'deck/hand'
require 'deck/rank_selector'
require 'rank/flush'
require 'rank/four_of_a_kind'
require 'rank/full_house'
require 'rank/high_card'
require 'rank/pair'
require 'rank/hand_rank'
require 'rank/straight'
require 'rank/straight_flush'
require 'rank/three_of_a_kind'
require 'rank/two_pairs'
require 'poker_hands'
require 'net/http'
require 'active_support'
require 'action_controller'


def high_card
  [Deck::Card.new("2", "D"),
   Deck::Card.new("5", "H"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("7", "S"),
   Deck::Card.new("8", "D")]
end

def high_card_same_highest_1
  [Deck::Card.new("2", "D"),
   Deck::Card.new("5", "H"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("7", "D"),
   Deck::Card.new("8", "D")]
end

def high_card_same_highest_2
  [Deck::Card.new("2", "D"),
   Deck::Card.new("5", "H"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("6", "D"),
   Deck::Card.new("8", "D")]
end

def hand_high_card_same_highest
  [Deck::Hand.new(high_card_same_highest_1),
   Deck::Hand.new(high_card_same_highest_2)]
end

def pair
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("3", "D"),
   Deck::Card.new("8", "D")]
end

def same_pair_1
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("3", "S"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("8", "D")]
end

def same_pair_2
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("3", "S"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("7", "D")]
end

def hand_same_pair
  [Deck::Hand.new(same_pair_1),
   Deck::Hand.new(same_pair_2)]
end

def two_pairs
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("9", "H"),
   Deck::Card.new("9", "S"),
   Deck::Card.new("8", "D")]
end

def same_two_pair_1
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("9", "H"),
   Deck::Card.new("9", "S"),
   Deck::Card.new("8", "D")]
end

def same_two_pair_2
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("9", "H"),
   Deck::Card.new("9", "S"),
   Deck::Card.new("6", "D")]
end

def hand_same_two_pairs
  [Deck::Hand.new(same_pair_1),
   Deck::Hand.new(same_pair_2)]
end

def three_of_a_kind
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("9", "S"),
   Deck::Card.new("8", "D")]
end

def same_three_of_a_kind_1
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("6", "S"),
   Deck::Card.new("8", "D")]
end

def same_three_of_a_kind_2
  [Deck::Card.new("2", "D"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("2", "H"),
   Deck::Card.new("7", "S"),
   Deck::Card.new("8", "D")]
end

def hand_some_three_of_a_kind
 [Deck::Hand.new(same_three_of_a_kind_1),
  Deck::Hand.new(same_three_of_a_kind_2)]
end

def straight
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "H"),
   Deck::Card.new("4", "H"),
   Deck::Card.new("5", "S"),
   Deck::Card.new("6", "D")]
end

def same_stright_1
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "H"),
   Deck::Card.new("4", "H"),
   Deck::Card.new("5", "S"),
   Deck::Card.new("6", "D")]
end

def same_stright_2
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "H"),
   Deck::Card.new("4", "H"),
   Deck::Card.new("5", "S"),
   Deck::Card.new("8", "D")]
end

def hand_same_straight
 [Deck::Hand.new(same_stright_1),
  Deck::Hand.new(same_stright_2)]
end

def flush
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "D"),
   Deck::Card.new("8", "D"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("6", "D")]
end

def flush_1
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "D"),
   Deck::Card.new("8", "D"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("6", "D")]
end

def flush_2
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "D"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("6", "D")]
end

def hand_two_flush
  [Deck::Hand.new(same_stright_1),
   Deck::Hand.new(same_stright_2)]
end

def full_house
  [Deck::Card.new("4", "D"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("4", "H"),
   Deck::Card.new("5", "S"),
   Deck::Card.new("5", "D")]
end

def same_full_house_1
  [Deck::Card.new("4", "D"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("4", "H"),
   Deck::Card.new("3", "S"),
   Deck::Card.new("3", "D")]
end

def same_full_house_2
  [Deck::Card.new("5", "D"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("5", "H"),
   Deck::Card.new("2", "S"),
   Deck::Card.new("2", "D")]
end

def hand_same_full_house
  [Deck::Hand.new(same_full_house_1),
   Deck::Hand.new(same_full_house_2)]
end

def four_of_a_kind
  [Deck::Card.new("4", "D"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("4", "H"),
   Deck::Card.new("4", "S"),
   Deck::Card.new("5", "D")]
end

def same_four_of_a_kind
  [Deck::Card.new("5", "D"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("5", "H"),
   Deck::Card.new("5", "S"),
   Deck::Card.new("6", "D")]
end

def hand_same_four_of_a_kind
  [Deck::Hand.new(four_of_a_kind),
   Deck::Hand.new(same_four_of_a_kind)]
end

def straight_flush
  [Deck::Card.new("2", "D"),
   Deck::Card.new("3", "D"),
   Deck::Card.new("4", "D"),
   Deck::Card.new("5", "D"),
   Deck::Card.new("6", "D")]
end

def straight_flush_2
  [Deck::Card.new("2", "S"),
   Deck::Card.new("3", "S"),
   Deck::Card.new("4", "S"),
   Deck::Card.new("6", "S"),
   Deck::Card.new("8", "S")]
end

def hand_two_straight_flush
  [Deck::Hand.new(straight_flush),
   Deck::Hand.new(straight_flush_2)]
end

def hand_straight_flush
  [Deck::Hand.new(straight_flush),
   Deck::Hand.new(four_of_a_kind),
   Deck::Hand.new(full_house),
   Deck::Hand.new(flush),
   Deck::Hand.new(straight),
   Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_four_of_a_kind
  [Deck::Hand.new(four_of_a_kind),
   Deck::Hand.new(full_house),
   Deck::Hand.new(flush),
   Deck::Hand.new(straight),
   Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_full_house
  [Deck::Hand.new(full_house),
   Deck::Hand.new(flush),
   Deck::Hand.new(straight),
   Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_flush
  [Deck::Hand.new(flush),
   Deck::Hand.new(straight),
   Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_flush
  [Deck::Hand.new(flush),
   Deck::Hand.new(straight),
   Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_straight
  [Deck::Hand.new(straight),
   Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_three_of_a_kind
  [Deck::Hand.new(three_of_a_kind),
   Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_two_pairs
  [Deck::Hand.new(two_pairs),
   Deck::Hand.new(pair)]
end

def hand_pair
  [Deck::Hand.new(pair),
   Deck::Hand.new(high_card)]
end

def hand_high_card
  [Deck::Hand.new(high_card)]
end
