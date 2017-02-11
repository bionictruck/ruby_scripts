require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'selenium-webdriver'
require './spec_helper.rb'

feature "Navigate through top level links" do
    # scenario "Click on NFL link and verify correct page loads" do
    #     $driver.click_link("NFL", :match => :first)
    #     $driver.should have_title "NFL Football Teams, Scores, Stats, News, Standings, Rumors - National Football League - ESPN"
    # end
    # scenario "Click on NBA link and verify correct page loads" do
    #     $driver.click_link("NBA", :match => :first)
    #     $driver.should have_title "NBA - National Basketball Association Teams, Scores, Stats, News, Standings, Rumors - ESPN"        
    # end
    # scenario "Click on MLB link and verify correct page loads" do
    #     $driver.click_link("MLB", :match => :first)
    #     $driver.should have_title "MLB - Major League Baseball Teams, Scores, Stats, News, Standings, Rumors - ESPN"
    # end
    # scenario "Click on NCAAF link and verify correct page loads" do
    #     $driver.click_link("NCAAF", :match => :first)
    #     $driver.should have_title "NCAA College Football Teams, Scores, Stats, News, Standings, Rumors - College Football - ESPN"
    # end

    # scenario "Click on Soccer link and verify correct page loads" do
    #     $driver.click_link("Soccer")
    #     $driver.switch_to_window($driver.window_opened_by (click_link "Soccer"))
    #     $driver.should have_title "Soccer News and Scores - ESPN FC"
    #     $driver.switch_to_window("Soccer News and Scores - ESPN FC")
    #     $driver.switch_to_window("NCAA College Football Teams, Scores, Stats, News, Standings, Rumors - College Football - ESPN")
    # end

    scenario "Click on NCAAM link and verify correct page loads" do
        $driver.click_link("NCAAM")
        $driver.should have_title "NCAA - Men's College Basketball Teams, Scores, Stats, News, Standings, Rumors - ESPN"
    end
    # scenario "Click on Golf link and verify correct page loads" do
    #     $driver.click_link("Golf", :match => :first)
    #     $driver.should have_title "Golf News, Scores, Players, Schedule and Courses - Golf - ESPN"
    # end
    # scenario "Click on MMA link and verify correct page loads" do
    #     $driver.click_link("MMA", :match => :first)
    #     $driver.should have_title "Mixed Martial Arts News, Video, Rankings, Results, and History - MMA - ESPN"
    # end
end

