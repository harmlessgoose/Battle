def sign_in_and_play
  visit '/'
  fill_in :Player1, with: 'Rakshak'
  fill_in :Player2, with: 'Peter'
  click_on 'Submit'
end