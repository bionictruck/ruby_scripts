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
        ### First we look to see if the link can be seen
        if $driver.has_link?("Home")
        ### If True then click on the Home link and verify the correct page loads
            $driver.click_link("Home", :match => :first)
            expect($driver).to have_title "NFL Football Teams, Scores, Stats, News, Standings, 
            Rumors - National Football League - ESPN"
        else
            ### If False expand the More link and find the Home link in there.
            $driver.click_link("More")
            $driver.click_link("Home", :match => :first)
            ### Verify the page loads
            expect($driver).to have_title "NFL Football Teams, Scores, Stats, News, Standings, 
            Rumors - National Football League - ESPN"
        end
    end
    scenario "Click on the Scores link and verify the appropriate page loads" do
        if $driver.has_link?("Scores")
            $driver.click_link("Scores")
            expect($driver).to have_title "NFL Football Scores - NFL Scoreboard - ESPN"
        else
            $driver.click_link("More")
            $driver.click_link("Scores")
            expect($driver).to have_title "NFL Football Scores - NFL Scoreboard - ESPN"
        end
    end
    scenario "Click on the Schedule link and verify the appropriate page loads" do
        if $driver.has_link?("Schedule")
            $driver.click_link("Schedule", :match => :first)
            ### Title needs to be updated for each year
            expect($driver).to have_title "2017 NFL Football Schedule"
        else
            $driver.click_link("More")
            $driver.click_link("Schedule", :match => :first)
            ### Title needs to be updated for each year
            expect($driver).to have_title "2017 NFL Football Schedule"
        end           
    end
    scenario "Click on the Standings link and verify the appropriate page loads" do
        if $driver.has_link?("Standings")
            $driver.click_link("Standings")
            ### Title needs to be updated for each year
            expect($driver).to have_title "2016 NFL Regular Season Standings - Nation Football League"
        else
            $driver.click_link("More")
            $driver.click_link("Standings")
            ### Title needs to be updated for each year
            expect($driver).to have_title "2016 NFL Regular Season Standings - Nation Football League"
        end
    end
    scenario "Click on the Stats links and verify the appropriate page loads" do
        if $driver.has_link?("Stats")
            $driver.click_link("Stats")
            expect($driver).to have_title "NFL Statistics - National Football League - ESPN"
        else
            $driver.click_link("More")
            $driver.click_link("Stats")
            ### Title needs to be updated for each year
            expect($driver).to have_title "2016 NFL Statistics - National Football League - ESPN"
        end
    end
    scenario "Click on the Teams link and verify the appropritate page loads" do
        if $driver.has_link?("Teams")
            $driver.click_link("Teams", :match => :first)
            expect($driver).to have_title "NFL Football Teams, National Football League Teams, Football Teams - ESPN"
        else
            $driver.click_link("More")
            $driver.click_link("Teams")
            expect($driver).to have_title "NFL Football Teams, National Football League Teams, Football Teams - ESPN"
        end
    end
    scenario "Click on the Fantasy Football link and verify the appropritate page loads" do
        if $driver.has_link?("Fantasy: Sign Up")
            $driver.click_link("Fantasy: Sign Up", :match => :first)
            expect($driver).to have_title "Fantasy Football"
            $driver.click_link("NFL", :match => :first)
        else
            $driver.click_link("More")
            $driver.click_link("Fantasy: Sign Up")
            expect($driver).to have_title "Fantasy Football"
            $driver.click_link("NFL", :match => :first)
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
    scenario "Click on the NFL Nation link and verify the appropriate page loads" do
        if $driver.has_link?("NFL Nation")
            $driver.click_link("NFL Nation", :match => :first)
            expect($driver).to have_title "NFL Nation"
        else
            $driver.click_link("More")
            $driver.click_link("NFL Nation")
            expect($driver).to have_title "NFL Nation"
        end
    end
    scenario "Click on the Draft link and verify the appropriate page loads" do
        if $driver.has_link?("Draft")
            $driver.click_link("Draft", :match => :first)
            expect($driver).to have_title "Draft"
            $driver.click_link("NFL", :match => :first)        
        else
            $driver.click_link("More")
            $driver.click_link("Draft")
            expect($driver).to have_title "Draft"
            $driver.click_link("NFL", :match => :first)
        end
    end
end

