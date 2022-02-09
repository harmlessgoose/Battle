feature "testing homepage" do
  
  scenario "Expect Players to fill in the names, submit the form and see the names on screen" do
    visit '/'
    fill_in :Player1, with: 'Rakshak'
    fill_in :Player2, with: 'Peter'
    click_on 'Submit'

    #save_and_open_page

    expect(page).to have_content 'Rakshak vs. Peter'
  end

end