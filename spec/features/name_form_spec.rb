RSpec.feature "Name form", :type => :feature do
  scenario "User types name" do
    visit "/"

    fill_in "Name1", with: "Albie"
    fill_in "Name2", with: "Noby"
    click_button "submit"
    expect(page).to have_content('Player 1 is Albie. Player 2 is Noby.')

  end
end
