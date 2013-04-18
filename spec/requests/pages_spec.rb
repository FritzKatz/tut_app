require 'spec_helper'

# describe "Pages" do

#   before(:each) do
#     @base_title = "Tutorial App"
#   end
 

#  describe "Home page" do
#     before {visit root_path} 

#     it "should have the content 'Home'" do
#       page.should have_content('Home')
#     end

#     it "should have the right title" do
#       page.should have_selector('title', :text => "#{@base_title} | Home")
#     end
#  end

#  describe "Help page" do
#     before {visit help_path} 

#     it "should have the content 'Help'" do
#       page.should have_content('Help')
#     end

#     it "should have the title 'Help'" do
#       page.should have_selector('title', :text => "#{@base_title} | Help")
#     end
#  end

#  describe "About page" do
#     before {visit about_path} 

#     it "should have the content 'About'" do
#       page.should have_content('About')
#     end

#     it "should have the title 'About Us'" do
#       page.should have_selector('title', :text => "#{@base_title} | About Us")
#     end
#  end

#   describe "Contact page" do
#     before {visit contact_path} 

#     it "should have the h1 'Contact'" do
#       page.should have_selector('h1', text: 'Contact')
#     end

#     it "should have the title 'Contact'" do
#       page.should have_selector('title', text: "#{@base_title} | Contact")
#     end
#   end

# end


describe "Pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Tutorial App') }
    it { should have_selector('title', text: full_title('')) }
    #it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

  describe "Signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "Tutorial App"
    page.should have_selector 'title', text: full_title('Home')
  end

end
