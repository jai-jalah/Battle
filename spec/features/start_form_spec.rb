feature 'Form for player names' do
    
    scenario 'enter & submit player names and see them on screen' do
        visit '/'
        fill_in :p1_name, with: 'jai'
        fill_in :p2_name, with: 'adam'
        click_button 'Submit'
        expect(page).to have_content 'jai vs adam'
    end

end

