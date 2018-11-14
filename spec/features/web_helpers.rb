def sign_in_and_play
  visit('/')
  fill_in('Player1', with: 'Michael')
  fill_in('Player2', with: 'Wayne')
  click_button('Begin!')
end
