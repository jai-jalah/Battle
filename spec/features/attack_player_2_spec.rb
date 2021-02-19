feature 'attacking player 2' do
  scenario 'player 1 gets confirmation of attack' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content 'Jai attacked Adam!'
  end
end

feature 'reducing player 2 HP' do
  scenario 'player 1 attacks player 2 and reduces his HP by 10' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content 'Adam has 50HP'
  end
end
