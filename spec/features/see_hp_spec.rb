feature 'See hp' do
  scenario 'see Player 2 60 hp as default' do
    visit("/")
    fill_in(:player_1_name, with: 'Chris')
    fill_in(:player_2_name, with: 'Agata')
    click_button("submit")
    expect(page).to have_content "Agata 60/60 HP"
  end
end
