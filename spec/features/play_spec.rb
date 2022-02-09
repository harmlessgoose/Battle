feature "Let Player see Player 2's HP" do

  scenario "expect to be able to see Player 2's Hit point" do
    sign_in_and_play
    expect(page).to have_content 'Peter HP: 100'
  end

end