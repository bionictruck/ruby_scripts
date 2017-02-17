require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require 'capybara/rspec'

$driver = Capybara::Session.new(:selenium)

Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit

Capybara::Webkit.configure do |config|
    config.allow_url("")  
end

feature 'Navigating to ESPN' do
    scenario "Verify the correct page is loaded" do
        $driver.visit "http://www.espn.com"
        $driver.should have_title "ESPN: The Worldwide Leader in Sports"
    end
end