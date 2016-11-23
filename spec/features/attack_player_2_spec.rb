feature "Throw a tomato" do

  scenario "at player 2" do
    sign_in_and_play
    click_button "Throw a tomato"
    expect(page).to have_content "Agata threw a tomato at Chris"
  end
end
