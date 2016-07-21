feature "switch turns" do
  scenario "can see the current turn at the start of game" do
    sign_in_and_play
    expect(page).to have_content("Albie's turn")
  end

  scenario "after player 1 attacks" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content('Albie attacked Noby')
    click_button "ok"
    expect(page).to have_content("Noby's turn")
  end
end
