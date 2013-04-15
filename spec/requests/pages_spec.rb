require 'spec_helper'

describe "Pages" do
 
 describe "Home page" do
    it "should have the content 'home'" do
      visit '/pages/home'
      page.should have_content('home')
    end
 end

 describe "Help page" do

    it "should have the content 'help'" do
      visit '/pages/help'
      page.should have_content('help')
    end
 end

 describe "About page" do

    it "should have the content 'about'" do
      visit '/pages/about'
      page.should have_content('about')
    end
 end


end
