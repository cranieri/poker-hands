# The Poker Hands Gem

A simple gem to manage hands in a poker game.

## Installation
    gem install poker_hands

## Usage Examples

**To create new hands and see the winner**

```ruby
    poker = ::PokerHands.new

    h1 = Deck::Hand.new([Deck::Card.new("2", "C"), Deck::Card.new("1", "H"), Deck::Card.new("7", "C"), Deck::Card.new("5", "S"), Deck::Card.new("3", "C")])
    h2 = Deck::Hand.new([Deck::Card.new("5", "C"), Deck::Card.new("1", "C"), Deck::Card.new("6", "H"), Deck::Card.new("5", "C"), Deck::Card.new("5", "C")])
    h3 = Deck::Hand.new([Deck::Card.new("2", "C"), Deck::Card.new("5", "H"), Deck::Card.new("4", "C"), Deck::Card.new("5", "C"), Deck::Card.new("5", "C")])
    h4 = Deck::Hand.new([Deck::Card.new("5", "H"), Deck::Card.new("5", "S"), Deck::Card.new("3", "C"), Deck::Card.new("5", "C"), Deck::Card.new("5", "C")])

    poker.hands = [h1, h2, h3, h4]
    winner = @poker.winner
```
Winner will be a Deck::Hand object

## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0

If something doesn't work on one of these interpreters, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be responsible for providing patches in a timely
fashion. If critical issues for a particular implementation exist at the time
of a major release, support for that Ruby version may be dropped.


## Copyright
Copyright (c) 2013 Cosimo Ranieri.
