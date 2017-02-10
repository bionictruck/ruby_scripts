require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit

Capybara::Webkit.configure do |config|
    config.allow_url("")
end

$driver = Capybara::Session.new(:selenium)