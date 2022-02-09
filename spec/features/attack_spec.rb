feature "Let players battle each other" do

  scenario "expect to be able to attack Player 2" do
    sign_in_and_play
    click_on 'Attack'

    expect(page).to have_content 'Rakshak attacked Peter!'

  end

end