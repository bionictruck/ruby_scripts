require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require './spec_helper.rb'

### The hover over feature does not appear to be implemented in this version of capybara
### Will add more tests for hover over once a solution has been found
### The Tickets link opens another tab which selenium currently doesn't support

feature "Navigate through all top MLB sub links" do
    scenario "Click on Home link and verify the appropriate page loads" do
        $driver.click_link("MLB", :match => :first)
        ### First we look to see if the link can be seen
        if $driver.has_link?("Home")
        ### If True then click on the Home link and verify the correct page loads
            $driver.click_link("Home", :match => :first)
            expect($driver).to have_title "MLB Football Teams, Scores, Stats, News, Standings, 
            Rumors - National Football League - ESPN"
        else
            ### If False expand the More link and find the Home link in there.
            $driver.click_link("More")
            $driver.click_link("Home", :match => :first)
            ### Verify the page loads
            expect($driver).to have_title "MLB Football Teams, Scores, Stats, News, Standings, 
            Rumors - National Football League - ESPN"
        end
    end
    scenario "Click on the Scores link and verify the appropriate page loads" do
        if $driver.has_link?("Scores")
            $driver.click_link("Scores")
            expect($driver).to have_title "MLB Football Scores - MLB Scoreboard - ESPN"
        else
            $driver.click_link("More")
            $driver.click_link("Scores")
            expect($driver).to have_title "MLB Football Scores - MLB Scoreboard - ESPN"
        end
    end
    scenario "Click on the Schedule link and verify the appropriate page loads" do
        if $driver.has_link?("Schedule")
            $driver.click_link("Schedule", :match => :first)
            expect($driver).to have_title "MLB Football Schedule"
        else
            $driver.click_link("More")
            $driver.click_link("Schedule", :match => :first)
            expect($driver).to have_title "MLB Football Schedule"
        end           
    end
    scenario "Click on the Standings link and verify the appropriate page loads" do
        if $driver.has_link?("Standings")
            $driver.click_link("Standings")
            expect($driver).to have_title "MLB Regular Season Standings - Nation Football League"
        else
            $driver.click_link("More")
            $driver.click_link("Standings")
            expect($driver).to have_title "MLB Regular Season Standings - Nation Football League"
        end
    end
    scenario "Click on the Stats links and verify the appropriate page loads" do
        if $driver.has_link?("Stats")
            $driver.click_link("Stats")
            expect($driver).to have_title "MLB Statistics - National Football League - ESPN"
        else
            $driver.click_link("More")
            $driver.click_link("Stats")
            expect($driver).to have_title "MLB Statistics - National Football League - ESPN"
        end
    end
    scenario "Click on the Teams link and verify the appropritate page loads" do
        if $driver.has_link?("Teams")
            $driver.click_link("Teams", :match => :first)
            expect($driver).to have_title "MLB Football Teams, National Football League Teams, Football Teams - ESPN"
        else
            $driver.click_link("More")
            $driver.click_link("Teams")
            expect($driver).to have_title "MLB Football Teams, National Football League Teams, Football Teams - ESPN"
        end
    end
    scenario "Click on the Fantasy Football link and verify the appropritate page loads" do
        if $driver.has_link?("Fantasy: Sign Up")
            $driver.click_link("Fantasy: Sign Up", :match => :first)
            expect($driver).to have_title "Fantasy Football"
            $driver.click_link("MLB", :match => :first)
        else
            $driver.click_link("More")
            $driver.click_link("Fantasy: Sign Up")
            expect($driver).to have_title "Fantasy Football"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Power Rankings link and verify the appropriate page loads" do
        if $driver.has_link?("Power Rankings")
            $driver.click_link("Power Rankings")
            expect($driver).to have_title "Power Rankings"
        else
            $driver.click_link("More")
            $driver.click_link("Power Rankings")
            expect($driver).to have_title "Power Rankings"
        end
    end
    scenario "Click on the MLB Nation link and verify the appropriate page loads" do
        if $driver.has_link?("MLB Nation")
            $driver.click_link("MLB Nation", :match => :first)
            expect($driver).to have_title "MLB Nation"
        else
            $driver.click_link("More")
            $driver.click_link("MLB Nation")
            expect($driver).to have_title "MLB Nation"
        end
    end
    scenario "Click on the Draft link and verify the appropriate page loads" do
        if $driver.has_link?("Draft")
            $driver.click_link("Draft", :match => :first)
            expect($driver).to have_title "Draft"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Draft")
            expect($driver).to have_title "Draft"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Playoff Machine link and verify the appropriate page loads" do
        if $driver.has_link?("Playoff Machine")
            $driver.click_link("Playoff Machine", :match => :first)
            expect($driver).to have_title "Playoff Machine"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Playoff Machine")
            expect($driver).to have_title "Playoff Machine"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Monday Night HQ link and verify the appropriate page loads" do
        if $driver.has_link?("Monday Night HQ")
            $driver.click_link("Monday Night HQ", :match => :first)
            expect($driver).to have_title "Monday Night"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Monday Night HQ")
            expect($driver).to have_title "Monday Night"
            $driver.click_link("MLB", :match => :first)
        end
    end    
    scenario "Click on the Transactions link and verify the appropriate page loads" do
        if $driver.has_link?("Transactions")
            $driver.click_link("Transactions", :match => :first)
            expect($driver).to have_title "MLB Football Transactions"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Transactions")
            expect($driver).to have_title "MLB Football Transactions"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Expert Picks link and verify the appropriate page loads" do
        if $driver.has_link?("Expert Picks")
            $driver.click_link("Expert Picks", :match => :first)
            expect($driver).to have_title "MLB Picks and Predictions"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Expert Picks")
            expect($driver).to have_title "MLB Picks and Predictions"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Daily Lines link and verify the appropriate page loads" do
        if $driver.has_link?("Daily Lines")
            $driver.click_link("Daily Lines", :match => :first)
            expect($driver).to have_title "MLB Odds and Daily Lines"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Daily Lines")
            expect($driver).to have_title "MLB Odds and Daily Lines"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Pro Bowl link and verify the appropriate page loads" do
        if $driver.has_link?("Pro Bowl")
            $driver.click_link("Pro Bowl", :match => :first)
            expect($driver).to have_title "MLB Pro Bowl"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Pro Bowl")
            expect($driver).to have_title "MLB Pro Bowl"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Football Power Index link and verify the appropriate page loads" do
        if $driver.has_link?("Football Power Index")
            $driver.click_link("Football Power Index", :match => :first)
            expect($driver).to have_title "Football Power Index"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Football Power Index")
            expect($driver).to have_title "Football Power Index"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Injury Wire link and verify the appropriate page loads" do
        if $driver.has_link?("Injury Wire")
            $driver.click_link("Injury Wire", :match => :first)
            expect($driver).to have_title "MLB Injury Wire"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Injury Wire")
            expect($driver).to have_title "MLB Injury Wire"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Rumors link and verify the appropriate page loads" do
        if $driver.has_link?("Rumors")
            $driver.click_link("Rumors", :match => :first)
            expect($driver).to have_title "MLB Rumor Central"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Rumors")
            expect($driver).to have_title "MLB Rumor Central"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Chalk link and verify the appropriate page loads" do
        if $driver.has_link?("Chalk")
            $driver.click_link("Chalk", :match => :first)
            expect($driver).to have_title "Chalk - ESPN"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Chalk")
            expect($driver).to have_title "Chalk - ESPN"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the PickCenter link and verify the appropriate page loads" do
        if $driver.has_link?("PickCenter")
            $driver.click_link("PickCenter", :match => :first)
            expect($driver).to have_title "ESPN PickCenter - Picks, Analysis, Odds, Game Breakdowns"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("PickCenter")
            expect($driver).to have_title "ESPN PickCenter - Picks, Analysis, Odds, Game Breakdowns"
            $driver.click_link("MLB", :match => :first)
        end
    end
    scenario "Click on the Coaches link and verify the appropriate page loads" do
        if $driver.has_link?("Coaches")
            $driver.click_link("Coaches", :match => :first)
            expect($driver).to have_title "MLB Coaches"
            $driver.click_link("MLB", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Coaches")
            expect($driver).to have_title "MLB Coaches"
            $driver.click_link("MLB", :match => :first)
        end
    end
### We The Fans only has one link back to ESPN.com and that opens a separate tab
    scenario "Click on the We The Fans link and verify the appropriate page loads" do
        if $driver.has_link?("We The Fans")
            $driver.click_link("We The Fans", :match => :first)
            expect($driver).to have_title "We the Fans"        
        else
            $driver.click_link("More")
            $driver.click_link("We The Fans")
            expect($driver).to have_title "We the Fans"
        end
    end
end

