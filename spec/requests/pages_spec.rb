require 'spec_helper'

describe "Pages" do
 
 describe "Home page" do
    it "should have the content 'Home'" do
      visit '/pages/home'
      page.should have_content('Home')
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector('title', 
                        :text => "Tutorial App | Home")
    end
 end

 describe "Help page" do

    it "should have the content 'Help'" do
      visit '/pages/help'
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/pages/help'
      page.should have_selector('title',
                        :text => "Tutorial App | Help")
    end
 end

 describe "About page" do

    it "should have the content 'About'" do
      visit '/pages/about'
      page.should have_content('About')
    end

    it "should have the title 'About Us'" do
      visit '/pages/about'
      page.should have_selector('title',
                        :text => "Tutorial App | About Us")
    end
 end


end
