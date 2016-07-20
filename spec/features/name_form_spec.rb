feature "Name form" do
  scenario "User types name" do
    sign_in_and_play
    expect(page).to have_content('Player 1 is Albie. Player 2 is Noby.')

  end
end
