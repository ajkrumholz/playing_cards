require 'spec_helper'
require './lib/playing_card'

RSpec.describe PlayingCard do
  let(:card) { described_class.new('diamond', 'A') }

  it 'exists' do
    expect(card).to be_instance_of(described_class)
  end

  it 'has a suit' do
    expect(card.suit).to eq('diamond')
  end

  it 'has a value' do
    expect(card.value).to eq('A')
  end
end
