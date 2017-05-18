require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require './spec_helper.rb'


### Links that open a new tab cannot currently be accessed with Capybara.
### This is a known issue that should be addressed with a future project.
### https://github.com/SeleniumHQ/selenium-google-code-issue-archive/issues/3380

feature "Navigate through top level links" do
    scenario "Click on NFL link and verify correct page loads" do
        if $driver.has_link?("NFL")
            $driver.click_link("NFL", :match => :first)
            expect($driver).to have_title "National Football League"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("NFL", :match => :first)
            expect($driver).to have_title "National Football League"
        end
    end
    scenario "Click on NBA link and verify correct page loads" do
        if $driver.has_link?("NBA")
            $driver.click_link("NBA", :match => :first)
            expect($driver).to have_title "National Basketball Association"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("NBA", :match => :first)
            expect($driver).to have_title "National Basketball Association"
        end
    end
    scenario "Click on MLB link and verify correct page loads" do
        if $driver.has_link?("MLB")
            $driver.click_link("MLB", :match => :first)
            expect($driver).to have_title "Major League Baseball"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("MLB", :match => :first)
            expect($driver).to have_title "Major League Baseball"
        end
    end
    scenario "Click on NCAAF link and verify correct page loads" do
        if $driver.has_link?("NCAAF")
            $driver.click_link("NCAAF", :match => :first)
            expect($driver).to have_title "NCAA College Football"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("NCAAF", :match => :first)
            expect($driver).to have_title "NCAA College Football"
        end
    end
    scenario "Click on NCAAM link and verify correct page loads" do
        ### Needs to be updated to find and click on the second link
        # if $driver.has_link?("NCAAM")
        #     $driver.click_link("NCAAM")
        #     expect($driver).to have_title "NCAA - Men's College Basketball"
        # else
        $driver.click_link('…', :match => :first)
        $driver.click_link("NCAAM", :match => :first)
        expect($driver).to have_title "NCAA - Men's College Basketball"
        # end
    end
    scenario "Click on Golf link and verify correct page loads" do
        if $driver.has_link?("Golf")
            $driver.click_link("Golf", :match => :first)
            expect($driver).to have_title "Golf"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Golf", :match => :first)
            expect($driver).to have_title "Golf"
        end
    end
    scenario "Click on MMA link and verify correct page loads" do
        if $driver.has_link?("MMA")
            $driver.click_link("MMA", :match => :first)
            expect($driver).to have_title "Mixed Martial Arts"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("MMA", :match => :first)
            expect($driver).to have_title "Mixed Martial Arts"
        end
    end
    scenario "Click on Boxing link and verify correct page loads" do
        if $driver.has_link?("Boxing")
            $driver.click_link("Boxing", :match => :first)
            expect($driver).to have_title "Boxing"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Boxing", :match => :first)
            expect($driver).to have_title "Boxing"
        end
    end
    scenario "Click on Chalk link and verify the correct page loads" do
        if $driver.has_link?("Chalk")    
            $driver.click_link("Chalk", :match => :first)
            expect($driver).to have_title "Chalk"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Chalk", :match => :first)
            expect($driver).to have_title "Chalk"
        end
    end
    scenario "Click on NCAAW link and verify the correct page loads" do
        if $driver.has_link?("NCAAW")
            $driver.click_link("NCAAW", :match => :first)
            expect($driver).to have_title "Women's Basketball"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("NCAAW", :match => :first)
            expect($driver).to have_title "Women's Basketball"
        end
    end
    scenario "Click on NASCAR link and verify the correct page loads" do
        if $driver.has_link?("NASCAR")
            $driver.click_link("NASCAR", :match => :first)
            expect($driver).to have_title "NASCAR"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("NASCAR", :match => :first)
            expect($driver).to have_title "NASCAR"
        end
    end
    scenario "Click on Horse Racing link and verify the correct page loads" do
        if $driver.has_link?("Horse Racing")
            $driver.click_link("Horse Racing", :match => :first)
            expect($driver).to have_title "Horse Racing"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Horse Racing", :match => :first)
            expect($driver).to have_title "Horse Racing"
        end
    end
    scenario "Click on Recruiting BB link and verify the correct page loads" do
        if $driver.has_link?("Recruiting BB")
            $driver.click_link("Recruiting BB", :match => :first)
            expect($driver).to have_link("Recruiting BB")
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Recruiting BB", :match => :first)
            expect($driver).to have_link("Recruiting BB")
        end
    end
    scenario "Click on Little League World Series link and verify the correct page loads" do
        if $driver.has_link?("Little League World Series")
            $driver.click_link("Little League World Series", :match => :first)
            expect($driver).to have_title "Little League World Series"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Little League World Series", :match => :first)
            expect($driver).to have_title "Little League World Series"
        end
    end
    scenario "Click on Special Olympics link and verify the correct page loads" do
        if $driver.has_link?("Special Olympics")
            $driver.click_link("Special Olympics", :match => :first)
            expect($driver).to have_link("Special Olympics")
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Special Olympics", :match => :first)
            expect($driver).to have_link("Special Olympics")
        end
    end
    scenario "Click on Endurance Sports link and verify the correct page loads" do
        if $driver.has_link?("Endurance Sports")
            $driver.click_link("Endurance Sports", :match => :first)
            expect($driver).to have_title "Endurance Sports"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Endurance Sports", :match => :first)
            expect($driver).to have_title "Endurance Sports"
        end
    end
    scenario "Click on NHL link and verify the correct page loads" do
        if $driver.has_link?("NHL")
            $driver.click_link("NHL", :match => :first)
            expect($driver).to have_title "National Hockey League"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("NHL", :match => :first)
            expect($driver).to have_title "National Hockey League"
        end
    end
    scenario "Click on Tennis link and verify the correct page loads" do
        if $driver.has_link?("Tennis")
            $driver.click_link("Tennis", :match => :first)
            expect($driver).to have_title "Tennis"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Tennis", :match => :first)
            expect($driver).to have_title "Tennis"
        end
    end
    scenario "Click on WWE link and verify the correct page loads" do
        if $driver.has_link?("WWE")
            $driver.click_link("WWE", :match => :first)
            expect($driver).to have_title "WWE"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("WWE", :match => :first)
            expect($driver).to have_title "WWE"
        end
    end
    scenario "Click on esports link and verify the correct page loads" do
        if $driver.has_link?("esports")
            $driver.click_link("esports", :match => :first)
            expect($driver).to have_title "Esports"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("esports", :match => :first)
            expect($driver).to have_title "Esports"
        end
    end
    scenario "Click on Analytics link and verify the correct page loads" do
        if $driver.has_link?("Analytics")
            $driver.click_link("Analytics", :match => :first)
            expect($driver).to have_title "ESPN: The Worldwide Leader in Sports"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Analytics", :match => :first)
            expect($driver).to have_title "ESPN: The Worldwide Leader in Sports"
        end
    end
    scenario "Click on WNBA link and verify the correct page loads" do
        if $driver.has_link?("WNBA")
            $driver.click_link("WNBA", :match => :first)
            expect($driver).to have_title "Women's Basketball"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("WNBA", :match => :first)
            expect($driver).to have_title "Women's Basketball"
        end
    end
    scenario "Click on Racing link and verify the correct page loads" do
        if $driver.has_link?("Racing")
            $driver.click_link("Racing", :match => :first)
            expect($driver).to have_title "Racing"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Racing", :match => :first)
            expect($driver).to have_title "Racing"
        end
    end
    scenario "Click on Recruiting FB link and verify the correct page loads" do
        if $driver.has_link?("Recruiting FB")
            $driver.click_link("Recruiting FB", :match => :first)
            expect($driver).to have_link("Recruiting FB")
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Recruiting FB", :match => :first)
            expect($driver).to have_link("Recruiting FB")
        end
    end
    scenario "Click on College Sports link and verify the correct page loads" do
        if $driver.has_link?("College Sports")
            $driver.click_link("College Sports", :match => :first)
            expect($driver).to have_title "ESPNU"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("College Sports", :match => :first)
            expect($driver).to have_title "ESPNU"
        end
    end
    scenario "Click on Olympic Sports link and verify the correct page loads" do
        if $driver.has_link?("Olympic Sports")
            $driver.click_link("Olympic Sports", :match => :first)
            expect($driver).to have_title "Olympic Sports"
        else
            $driver.click_link('…', :match => :first)
            $driver.click_link("Olympic Sports", :match => :first)
            expect($driver).to have_title "Olympic Sports"
        end
    end
    scenario "Click on Watch link and verify correct page loads" do
        $driver.click_link("Watch", :match => :first)
        expect($driver).to have_title "WatchESPN"
        $driver.click_link("ESPN")
        expect($driver).to have_title "ESPN: The Worldwide Leader in Sports"
    end
    scenario "Click on Listen link and verify correct page loads" do
        $driver.click_link("Listen", :match => :first)
        expect($driver).to have_title "ESPNRadio: Shows, Podcasts, Stations, Live Streaming - ESPN"
    end
    scenario "Click on Fantasy link and verify correct page loads" do
        $driver.click_link("Fantasy", :match => :first)
        expect($driver).to have_title "Fantasy Games - ESPN"
    end
end