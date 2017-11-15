require 'deck'
require 'card'

describe Deck do
  subject(:cards) { Deck.new }

  describe "initialize" do
    it 'should intialize with 52 cards' do
      expect(cards.deck.count).to eq(52)
    end

    it 'should have four of each value' do
      hash = Hash.new(0)
      cards.deck.each do |card|
        hash[card.value] += 1
      end
      correct_cards = hash.values.all? {|val| val == 4}
      expect(correct_cards).to be true
    end
  end

  describe 'shuffle' do
    it "should shuffle the deck" do
      expect(cards.deck).not_to eq(cards.deck.shuffle)
    end
  end

  describe 'draw' do
    it 'should draw the top card' do
      expect(cards.deck.first).to eq(cards.draw)
    end
    it 'should result in one less card in the deck' do
      original = cards.deck.count
      cards.draw
      expect(original - cards.deck.count).to eq(1)
    end
  end

end
