require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => "Sample App")
    end
    it "should not have a cusotm page title" do
      visit root_path
      page.should_not have_selector('title', :text => "Home")
    end
  end

  describe "Help page" do
  	it "should have the string 'Help'" do
  		visit help_path
  		page.should have_content('Help')
  	end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => " | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit about_path
  		page.should have_content('About Us')
  	end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => " | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', :text => " | Contact")
    end
  end

end
