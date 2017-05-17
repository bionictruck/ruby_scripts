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
        $driver.click_link("NFL", :match => :first)
        expect($driver).to have_title "NFL Football Teams, Scores, Stats, News, Standings, Rumors - National Football League - ESPN"
    end
    scenario "Click on NBA link and verify correct page loads" do
        $driver.click_link("NBA", :match => :first)
        expect($driver).to have_title "NBA - National Basketball Association Teams, Scores, Stats, News, Standings, Rumors - ESPN"        
    end
    scenario "Click on MLB link and verify correct page loads" do
        $driver.click_link("MLB", :match => :first)
        expect($driver).to have_title "MLB - Major League Baseball Teams, Scores, Stats, News, Standings, Rumors - ESPN"
    end
    scenario "Click on NCAAF link and verify correct page loads" do
        $driver.click_link("NCAAF", :match => :first)
        expect($driver).to have_title "NCAA College Football Teams, Scores, Stats, News, Standings, Rumors - College Football - ESPN"
    end
    scenario "Click on NCAAM link and verify correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link('NCAAM', :match => :first)
        expect($driver).to have_title "NCAA - Men's College Basketball Teams, Scores, Stats, News, Standings, Rumors - ESPN"
    end
    scenario "Click on Golf link and verify correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Golf", :match => :first)
        expect($driver).to have_title "Golf News, Scores, Players, Schedule and Courses - Golf - ESPN"
    end
    scenario "Click on MMA link and verify correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("MMA", :match => :first)
        expect($driver).to have_title "Mixed Martial Arts News, Video, Rankings, Results, and History - MMA - ESPN"
    end
    scenario "Click on Boxing link and verify correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Boxing", :match => :first)
        expect($driver).to have_title "Boxing News, Rankings, Results, and History - Championship Boxing - ESPN"
    end
    scenario "Click on Chalk link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Chalk", :match => :first)
        expect($driver).to have_title "Chalk - ESPN"
    end
    scenario "Click on NCAAW link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("NCAAW", :match => :first)
        expect($driver).to have_title "Women's Basketball - ESPN"
    end
    scenario "Click on NASCAR link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("NASCAR", :match => :first)
        expect($driver).to have_title "NASCAR Racing Schedule, News, Results, and Drivers - Motorsports - ESPN"
    end
    scenario "Click on Horse Racing link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Horse Racing", :match => :first)
        expect($driver).to have_title "Horse Racing News and Results - ESPN"
    end
    scenario "Click on Recruiting BB link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Recruiting BB", :match => :first)
        expect($driver).to have_link("Recruiting BB")
    end
    scenario "Click on Little League World Series link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Little League World Series", :match => :first)
        expect($driver).to have_title "Little League World Series - ESPN"
    end
    scenario "Click on Special Olympics link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Special Olympics", :match => :first)
        expect($driver).to have_link("Special Olympics")
    end
    scenario "Click on Endurance Sports link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Endurance Sports", :match => :first)
        expect($driver).to have_title "Endurance Sports Schedule, News, and Results - ESPN"
    end
    scenario "Click on NHL link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("NHL", :match => :first)
        expect($driver).to have_title "NHL - National Hockey League Teams, Scores, Stats, News, Standings, Rumors - ESPN"
    end
    scenario "Click on Tennis link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Tennis", :match => :first)
        expect($driver).to have_title "Tennis News, Videos, Players, and Results - ATP, WTA, US Open, Grand Slam - ESPN"
    end
    scenario "Click on WWE link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("WWE", :match => :first)
        expect($driver).to have_title "WWE News, Video - WWE - ESPN"
    end
    scenario "Click on esports link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("esports", :match => :first)
        expect($driver).to have_title "Esports News: LoL, Dota 2, Hearthstone - ESPN"
    end
    scenario "Click on Analytics link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Analytics", :match => :first)
        expect($driver).to have_title "ESPN: The Worldwide Leader in Sports - ESPN"
    end
    scenario "Click on WNBA link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("WNBA", :match => :first)
        expect($driver).to have_title "Women's Basketball - ESPN"
    end
    scenario "Click on Racing link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Racing", :match => :first)
        expect($driver).to have_title "Racing Schedule, News, Results, and Drivers - Motorsports - ESPN"
    end
    scenario "Click on Recruiting FB link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Recruiting FB", :match => :first)
        expect($driver).to have_link("Recruiting FB")
    end
    scenario "Click on College Sports link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("College Sports", :match => :first)
        expect($driver).to have_title "ESPNU - College Sports - NCAA Scores and Rankings - NCAA Sports - ESPN"
    end
    scenario "Click on Olympic Sports link and verify the correct page loads" do
        $driver.click_link('…', :match => :first)
        $driver.click_link("Olympic Sports", :match => :first)
        expect($driver).to have_title "Olympic Sports Schedule, News, and Results - Olympic Games - ESPN"
    end
    scenario "Click on Watch link and verify correct page loads" do
        $driver.click_link("Watch", :match => :first)
        expect($driver).to have_title "WatchESPN: Live Sports, Game Replays, Video Highlights"
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

