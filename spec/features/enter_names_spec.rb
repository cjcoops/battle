#require 'app'

feature 'Enter names' do
  scenario 'submitting names' do
    visit("/")
    fill_in(:player_1_name, with: 'Agata')
    fill_in(:player_2_name, with: 'Chris')
    click_button("submit")
    expect(page).to have_content 'Agata vs Chris'
  end
end
