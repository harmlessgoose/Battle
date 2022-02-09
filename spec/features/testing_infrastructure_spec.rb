feature "testing homepage" do
  
  # scenario "Check that the app is up and running" do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario "Expect Players to fill in the names, submit the form and see the names on screen" do
    visit '/'
    fill_in 'Player1', with: 'Rakshak'
    fill_in 'Player2', with: 'Peter'
    click_on 'Submit'
    expect(page).to have_content 'your names are Rakshak and Peter'
  end

end