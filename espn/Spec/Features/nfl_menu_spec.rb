require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require './spec_helper.rb'

### The hover over feature does not appear to be implemented in this version of capybara
### Will add more tests for hover over once a solution has been found

feature "Navigate through all top NFL sub links" do
    scenario "Click on Home link and verify the appropriate page loads" do
        $driver.click_link("NFL", :match => :first)
        $driver.click_link("Home", :match => :first)
        expect($driver).to have_title "NFL Football Teams, Scores, Stats, News, Standings, Rumors - National Football League - ESPN"
    end
    scenario "Click on the Scores link and verify the appropriate page loads" do
        $driver.click_link("Scores")
        expect($driver).to have_title "NFL Football Scores - NFL Scoreboard - ESPN"
        ### At times the page refreshes the menu bar differently and some links seen on Home are no longer available
        ### Click on Home bring the test back to the page where everything is seen
        $driver.click_link("Home", :match => :first)
    end
    scenario "Click on the Schedule link and verify the appropriate page loads" do
        $driver.click_link("Schedule", :match => :first)
        ### Title needs to be updated for each year
        expect($driver).to have_title "2017 NFL Football Schedule"
        $driver.click_link("Home", :match => :first)
    end
    scenario "Click on the Standings link and verify the appropriate page loads" do
        $driver.click_link("Standings")
        ### Title needs to be updated for each year
        expect($driver).to have_title "2016 NFL Regular Season Standings - Nation Football League"
        $driver.click_link("Home", :match => :first)
    end
    scenario "Click on the Stats links and verify the appropriate page loads" do
        $driver.click_link("Stats")
        ### Title needs to be updated for each year
        expect($driver).to have_title "2016 NFL Statistics - National Football League - ESPN"
        $driver.click_link("Home", :match => :first)
    end
    scenario "Click on the Teams link and verify the appropritate page loads" do
        $driver.click_link("Teams")
        expect($driver).to have_title "NFL Football Teams, National Football League Teams, Football Teams - ESPN"
        $driver.click_link("Home", :match => :first)
    end
    scenario "Click on the Power Rankings link and verify the appropriate page loads" do
        $driver.click_link("Power Rankings")
        expect($driver).to have_title "Power Rankings"
        $driver.click_link("Home", :match => :first)
    end
end

