feature 'Player hit points' do
    scenario "see player 2's Hit Points" do
        visit '/'
        fill_in :p1_name, with: 'Jai'
        fill_in :p2_name, with: 'Adam'
        click_button 'Submit'
        expect(page).to have_content "Adam's Hit Points: 50"
    end
end
