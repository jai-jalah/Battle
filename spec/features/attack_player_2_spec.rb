feature 'attacking player 2' do
  scenario 'player 1 gets confirmation of attack' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content 'Jai attacked Adam!'
  end
end