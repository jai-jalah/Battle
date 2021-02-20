feature 'Player hit points' do
  scenario "see player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content "Adam has 60HP"
  end
end
