feature "Players fill their names in a form, that submits, and displays on-screen" do
  scenario "There is a form that allows players to enter names" do
    visit('/')
    fill_in('Player1', with: 'Michael')
    fill_in('Player2', with: 'Wayne')
    click_button('Begin!')
    expect(page.has_content?("Player1: Michael vs Player2: Wayne")).to eq(true)
  end

  scenario "I can see Player 2's hitpoints" do
    visit('/')
    fill_in('Player1', with: 'Michael')
    fill_in('Player2', with: 'Wayne')
    click_button('Begin!')
    expect(page.has_content?("Wayne's hp: 100")).to eq true
  end
end
