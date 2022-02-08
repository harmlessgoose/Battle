feature "testing homepage" do
  
  scenario "Check that the app is up and running" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end

end