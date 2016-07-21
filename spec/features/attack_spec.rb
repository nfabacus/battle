feature "Attack Player" do
  scenario "player attacks another" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content('Albie attacked Noby')
    click_button "ok"
    expect(page).not_to have_content("Noby's: 50HP")
    expect(page).to have_content("Noby's: 40HP")
  end

end
