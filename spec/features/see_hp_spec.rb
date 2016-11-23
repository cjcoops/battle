feature 'See hp' do
  scenario 'see Player 2 60 hp as default' do
    sign_in_and_play
    expect(page).to have_content "Chris 60/60 HP"
  end
end
