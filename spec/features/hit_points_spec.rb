RSpec.feature "View Hit Points" do
  scenario "Show Player 2's Hit Points" do
    visit "/"
    fill_in :Name1, with: 'Albie'
    fill_in :Name2, with: 'Noby'
    click_button "Submit"
    expect(page).to have_content("Noby's: 50HP")
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
