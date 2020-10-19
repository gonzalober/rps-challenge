require "capybara/rspec"
require_relative "../../rsp"

Capybara.app = RockScissorsPaper

feature 'greeting' do
  scenario "the home page returns a successful status code" do
    srand(67809)
    visit("/")
    expect(page.status_code).to eq(200)
  end
  scenario 'names page' do
    visit "/"
    sign_in_and_play
    expect(page).to have_content "Hi Vick please choose:"
  end
end

feature "shows three buttons" do
  scenario "buttons are displayed" do
    visit("/names")
    expect(page).to have_content("Rock", "Paper")
  end
end
