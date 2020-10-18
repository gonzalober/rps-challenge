require 'buttons'
require_relative "../../lib/buttons"

describe ButtonsSession do
  it 'returns who won' do
    draw = ButtonsSession.new("rock", "paper", "scissors")
    expect(draw.button_challenge).to eq "it's a draw"
  end

end
