feature "Throw a tomato" do

  scenario "at player 2" do
    sign_in_and_play
    click_button "Throw a tomato"
    expect(page).to have_content "Agata threw a tomato at Chris"
  end

  scenario "and go back to play" do
    sign_in_and_play
    click_button "Throw a tomato"
    click_link "Go back"
    expect(page).to have_content "50"
  end
end
