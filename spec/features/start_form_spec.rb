feature 'Form for player names' do
    scenario 'enter & submit player names and see them on screen' do
        sign_in_and_play
        expect(page).to have_content 'Jai vs Adam'
    end
end

