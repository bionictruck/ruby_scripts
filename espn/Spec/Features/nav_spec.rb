require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require './spec_helper.rb'

feature 'Logging into ESPN' do
    #Go to the profiles app
    scenario "Verify the correct page is loaded" do
        $driver.visit "http://www.espn.com"
        $driver.has_title? "ESPN: The Worldwide Leader in Sports"
    end
end