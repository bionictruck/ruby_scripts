require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require 'capybara/rspec'

### For future use with ActionBuilder
# Capybara.register_driver :selenium do |app|
#   profile = Selenium::WebDriver::Firefox::Profile.new
#   profile.native_events = true
#   Capybara::Selenium::Driver.new(app, :browser => :firefox, profile: profile)
# end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.javascript_driver = :webkit
Capybara.exact = false


Capybara::Webkit.configure do |config|
    config.allow_url("")  
end

$driver = Capybara::Session.new(:selenium)

$driver.visit "http://www.espn.com"
$driver.current_window.maximize