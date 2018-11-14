require './spec/features/web_helpers.rb'

feature "Players fill their names in a form, that submits, and displays on-screen" do
  scenario "There is a form that allows players to enter names" do
    sign_in_and_play
    expect(page.has_content?("Player1: Michael vs Player2: Wayne")).to eq(true)
  end

  scenario "I can see Player 2's hitpoints" do
    sign_in_and_play
    expect(page.has_content?("Wayne's hp: 100")).to eq true
  end

  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page.has_content?("Wayne's hp: 90")).to eq true
  end

end
