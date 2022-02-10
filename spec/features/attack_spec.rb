feature "Let players battle each other" do

  scenario "expect to be able to attack Player 2" do
    attack
    expect(page).to have_content 'Rakshak attacked Peter!'
  end

  scenario "reduce Player 2 HP by 10" do
    attack
    expect(page).to have_content "Peter's HP is now 90"
  end



end