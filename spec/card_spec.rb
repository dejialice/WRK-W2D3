require 'card'

describe Card do
  subject(:card) {Card.new(:clubs, 'K')}
  describe 'intialize' do
    it 'should return suit' do
      expect(card.suit).to eq(:clubs)
    end
    it 'should return value' do
      expect(card.value).to eq("K")
    end
  end
end
