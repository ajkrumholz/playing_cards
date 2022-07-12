require './lib/playing_card'

class Deck
  attr_reader :cards

  def initialize
    @cards = new_deck
  end

  def new_deck
    values = [('1'..'9').to_a, 'J', 'Q', 'K', 'A'].flatten
    suits = %w[Hearts Diamonds Clubs Spades]
    values.flat_map do |value|
      suits.flat_map do |suit|
        PlayingCard.new(suit, value)
      end
    end
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def deal
    @cards.shift
  end
end
