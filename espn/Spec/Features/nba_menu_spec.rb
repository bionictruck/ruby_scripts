require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require './spec_helper.rb'

### The hover over feature does not appear to be implemented in this version of capybara
### Will add more tests for hover over once a solution has been found
### The Tickets link opens another tab which selenium currently doesn't support

feature "Navigate through all top NBA sub links" do
    scenario "Click on Home link and verify the appropriate page loads" do
        $driver.click_link("NBA", :match => :first)
        ### First we look to see if the link can be seen
        if $driver.has_link?("Home")
        ### If True then click on the Home link and verify the correct page loads
            $driver.click_link("Home", :match => :first)
            expect($driver).to have_title "National Basketball Association"
        else
            ### If False expand the More link and find the Home link in there.
            $driver.click_link("More")
            $driver.click_link("Home", :match => :first)
            ### Verify the page loads
            expect($driver).to have_title "National Basketball Association"
        end
    end
    scenario "Click on the Scores link and verify the appropriate page loads" do
        if $driver.has_link?("Scores")
            $driver.click_link("Scores")
            expect($driver).to have_title "NBA Basketball Scores"
        else
            $driver.click_link("More")
            $driver.click_link("Scores")
            expect($driver).to have_title "NBA Basketball Scores"
        end
    end
    scenario "Click on the Schedule link and verify the appropriate page loads" do
        if $driver.has_link?("Schedule")
            $driver.click_link("Schedule", :match => :first)
            expect($driver).to have_title "NBA Basketball Schedule"
        else
            $driver.click_link("More")
            $driver.click_link("Schedule", :match => :first)
            expect($driver).to have_title "NBA Basketball Schedule"
        end           
    end
    scenario "Click on the Standings link and verify the appropriate page loads" do
        if $driver.has_link?("Standings")
            $driver.click_link("Standings")
            expect($driver).to have_title "NBA Regular Season"
            $driver.click_link("More")
            $driver.click_link("Standings")
            expect($driver).to have_title "NBA Regular Season"
        end
    end
    scenario "Click on the Stats links and verify the appropriate page loads" do
        if $driver.has_link?("Stats")
            $driver.click_link("Stats")
            expect($driver).to have_title "NBA Stats and League Leaders"
        else
            $driver.click_link("More")
            $driver.click_link("Stats")
            expect($driver).to have_title "NBA Stats and League Leaders"
        end
    end
    scenario "Click on the Teams link and verify the appropritate page loads" do
        if $driver.has_link?("Teams")
            $driver.click_link("Teams", :match => :first)
            expect($driver).to have_title "NBA Basketball Teams"
        else
            $driver.click_link("More")
            $driver.click_link("Teams")
            expect($driver).to have_title "NBA Basketball Teams"
        end
    end
    scenario "Click on the Fantasy Basketball link and verify the appropritate page loads" do
        if $driver.has_link?("Fantasy Basketball")
            $driver.click_link("Fantasy Basketball", :match => :first)
            expect($driver).to have_title "Fantasy Basketball"
            $driver.click_link("NBA", :match => :first)
        else
            $driver.click_link("More")
            $driver.click_link("Fantasy Basketball")
            expect($driver).to have_title "Fantasy Basketball"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Rankings link and verify the appropriate page loads" do
        if $driver.has_link?("Rankings")
            $driver.click_link("Rankings")
            expect($driver).to have_title "NBA Power Rankings"
        else
            $driver.click_link("More")
            $driver.click_link("Rankings")
            expect($driver).to have_title "NBA Power Rankings"
        end
    end
    scenario "Click on the Players link and verify the appropriate page loads" do
        if $driver.has_link?("Players")
            $driver.click_link("Players", :match => :first)
            expect($driver).to have_title "NBA Players Rosters"
        else
            $driver.click_link("More")
            $driver.click_link("Players", :match => :first)
            expect($driver).to have_title "NBA Players Rosters"
        end
    end
    scenario "Click on the Draft link and verify the appropriate page loads" do
        if $driver.has_link?("Draft")
            $driver.click_link("Draft", :match => :first)
            expect($driver).to have_title "NBA draft"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Draft")
            expect($driver).to have_title "NBA draft"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Trade Machine link and verify the appropriate page loads" do
        if $driver.has_link?("Trade Machine")
            $driver.click_link("Trade Machine", :match => :first)
            expect($driver).to have_title "NBA Trade Machine"
            $driver.click_link("NBA", :match => :first)       
        else
            $driver.click_link("More")
            $driver.click_link("Trade Machine")
            expect($driver).to have_title "NBA Trade Machine"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Salaries link and verify the appropriate page loads" do
        if $driver.has_link?("Salaries")
            $driver.click_link("Salaries", :match => :first)
            expect($driver).to have_title "NBA Player Salaries"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Salaries")
            expect($driver).to have_title "NBA Player Salaries"
            $driver.click_link("NBA", :match => :first)
        end
    end    
    scenario "Click on the Transactions link and verify the appropriate page loads" do
        if $driver.has_link?("Transactions")
            $driver.click_link("Transactions", :match => :first)
            expect($driver).to have_title "NBA Trades and Transactions"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Transactions")
            expect($driver).to have_title "NBA Trades and Transactions"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Awards link and verify the appropriate page loads" do
        if $driver.has_link?("Awards")
            $driver.click_link("Awards", :match => :first)
            expect($driver).to have_title "NBA Awards"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Awards")
            expect($driver).to have_title "NBA Awards"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Daily Lines link and verify the appropriate page loads" do
        if $driver.has_link?("Daily Lines")
            $driver.click_link("Daily Lines", :match => :first)
            expect($driver).to have_title "NBA Odds and Daily Lines"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Daily Lines")
            expect($driver).to have_title "NBA Odds and Daily Lines"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Stein Line Live link and verify the appropriate page loads" do
        if $driver.has_link?("Stein Line Live")
            $driver.click_link("Stein Line Live", :match => :first)
            expect($driver).to have_title "Marc Stein"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Stein Line Live")
            expect($driver).to have_title "Marc Stein"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Playoffs link and verify the appropriate page loads" do
        if $driver.has_link?("Playoffs")
            $driver.click_link("Playoffs", :match => :first)
            expect($driver).to have_title "NBA playoffs"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Playoffs")
            expect($driver).to have_title "NBA playoffs"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Rumors link and verify the appropriate page loads" do
        if $driver.has_link?("Rumors")
            $driver.click_link("Rumors", :match => :first)
            expect($driver).to have_title "NBA Rumor Central"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Rumors")
            expect($driver).to have_title "NBA Rumor Central"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Chalk link and verify the appropriate page loads" do
        if $driver.has_link?("Chalk")
            $driver.click_link("Chalk", :match => :first)
            expect($driver).to have_title "Chalk - ESPN"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Chalk")
            expect($driver).to have_title "Chalk - ESPN"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the PickCenter link and verify the appropriate page loads" do
        if $driver.has_link?("PickCenter")
            $driver.click_link("PickCenter", :match => :first)
            expect($driver).to have_title "ESPN PickCenter - Picks, Analysis, Odds, Game Breakdowns"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("PickCenter")
            expect($driver).to have_title "ESPN PickCenter - Picks, Analysis, Odds, Game Breakdowns"
            $driver.click_link("NBA", :match => :first)
        end
    end
    scenario "Click on the Coaches link and verify the appropriate page loads" do
        if $driver.has_link?("Coaches")
            $driver.click_link("Coaches", :match => :first)
            expect($driver).to have_title "NBA Coaches"
            $driver.click_link("NBA", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Coaches")
            expect($driver).to have_title "NBA Coaches"
            $driver.click_link("NBA", :match => :first)
        end
    end
end

