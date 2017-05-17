require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require 'capybara/rspec'

Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox, profile: profile)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.javascript_driver = :webkit

Capybara::Webkit.configure do |config|
    config.allow_url("")  
end

$driver = Capybara::Session.new(:selenium)

feature 'Navigating to ESPN' do
    scenario "Verify the correct page is loaded" do
        $driver.visit "http://www.espn.com"
        expect($driver).to have_title "ESPN: The Worldwide Leader in Sports"
    end
end