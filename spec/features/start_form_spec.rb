feature 'Form for player names' do
    before do
        visit '/'
    end

    scenario 'Can enter player names' do
        first_test = fill_in('P1_name', with: 'Jai')
        expect(first_test).to eq('Jai')
    end

    scenario 'Can submit' do
        find_button('Submit').click
    end

    scenario 'Can see player names on screen' do
        expect('/').to have_content('Jai')
    end
end