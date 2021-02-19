def sign_in_and_play
  visit '/'
  fill_in :p1_name, with: 'Jai'
  fill_in :p2_name, with: 'Adam'
  click_button 'Submit'
end
