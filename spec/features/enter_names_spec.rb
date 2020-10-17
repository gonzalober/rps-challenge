require "capybara/rspec"
require_relative "../../lib/rsp"

Capybara.app = RockScissorsPaper

feature 'greeting' do
    scenario 'greeting page' do
      visit '/' do
      expect(page).to have_content 'Hello There!'
    end
  end
end
