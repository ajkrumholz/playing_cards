require './lib/deck'
require 'spec_helper'

RSpec.describe Deck do
  let(:deck) { described_class.new }

  it 'exists' do
    expect(deck).to be_instance_of(described_class)
  end

  it 'has 52 cards' do
    expect(deck.cards.count).to eq(52)
  end
end
