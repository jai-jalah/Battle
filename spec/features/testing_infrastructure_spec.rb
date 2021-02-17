feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
        visit('/')
        expect(page).to have_content 'Testing infrastructure working!'
    end
end

# ENV['RACK_ENV'] = 'test'
#
# require File.join(File.dirname(__FILE__), '..', 'app.rb')
#
# require 'capybara'
# require 'capybara/rspec'
# require 'rspec'
#
# Capybara.app = Battle
