def sign_in_and_play
  visit("/")
  fill_in(:player_1_name, with: 'Agata')
  fill_in(:player_2_name, with: 'Chris')
  click_button("submit")
end
