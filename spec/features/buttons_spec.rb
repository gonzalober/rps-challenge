require "capybara/rspec"
require_relative "../../rsp"

Capybara.app = RockScissorsPaper

feature "shows three buttons" do
  scenario "buttons are displayed" do
    visit("/names")
    expect(page).to have_content("Rock")
  end
end
