def sign_in_and_play
  visit "/"
  fill_in :Name1, with: 'Albie'
  fill_in :Name2, with: 'Noby'
  click_button "submit"
end
