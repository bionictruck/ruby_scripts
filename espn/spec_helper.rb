require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :poltergeist

Capybara::Webkit.configure do |config|
    config.allow_url("")
end

$driver = Capybara::Session.new(:selenium)

feature 'Navigating to ESPN' do
    scenario "Verify the correct page is loaded" do
        $driver.visit "http://www.espn.com"
        $driver.should have_title "ESPN: The Worldwide Leader in Sports"
    end
end