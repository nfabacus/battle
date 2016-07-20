RSpec.feature "Name form", :type => :feature do
  scenario "User types name" do
    visit "/"

    fill_in "Name1", :with => "Albie"
    fill_in "Name2", :with => "Noby"
    click_button "submit"
    expect(index).to have_text("Player1 is Albie. Player2 is Noby.")

  end
end
