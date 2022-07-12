require 'spec_helper'
require './lib/playing_card'

RSpec.describe PlayingCard do
    
    before(:each) do
        @card = PlayingCard.new('diamond', 'A')
    end

    it 'exists' do
        expect(@card).to be_instance_of(PlayingCard)
    end

    it 'has a suit' do
        expect(@card.suit).to eq('diamond')
    end

    it 'has a value' do
        expect(@card.value).to eq('A')
    end
end