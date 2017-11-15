require_relative 'card'

class Deck
  attr_reader :deck

  SUITS = [:hearts, :clubs, :diamonds, :spades].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"].freeze

  def initialize
    @deck = self.make_cards
  end

  def make_cards
    result = []
    VALUES.each do |value|
      SUITS.each do |suit|
        result << Card.new(suit, value)
      end
    end

    result
  end

  def shuffle
    self.deck.shuffle
  end

  def draw
    self.deck.shift
  end

end
