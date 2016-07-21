feature "switch turns" do
  before do
    sign_in_and_play
  end
  scenario "can see the current turn at the start of game" do
    expect(page).to have_content("Albie's turn")
  end

  scenario "after player 1 attacks" do
    click_button "attack"
    expect(page).to have_content('Albie attacked Noby')
    click_button "ok"
    expect(page).to have_content("Noby's turn")
  end

  scenario "when a player has zero HP" do
    9.times {
      click_button "attack"
      click_button "ok"
     }
     expect(page).to have_content("Noby loses!")
  end
end
