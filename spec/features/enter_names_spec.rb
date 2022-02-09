feature "testing homepage" do
  
  scenario "Expect Players to fill in the names, submit the form and see the names on screen" do
    sign_in_and_play
    
    #save_and_open_page

    expect(page).to have_content 'Rakshak vs. Peter'
  end

end