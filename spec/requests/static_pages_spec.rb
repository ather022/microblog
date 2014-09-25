require 'rails_helper'
require 'spec_helper'

RSpec.describe "Static pages", :type => :request do

  describe "Home page" do
    it "should have the h1 'TwEAter'" do
      visit root_path
      #page.should have_h1('Sample App')
      expect(page).to have_selector('h1', text: 'TwEAter')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title('TwEAter')
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).to_not have_title('|')
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit help_path
      #page.should have_h1('Help')
      expect(page).to have_selector('h1', text: 'Help')
    end
    it "should have the base title" do
      visit help_path
      expect(page).to have_title("Help me help you.")
    end
  end

  describe "About page" do
    it "should have the h1 'About us'" do
      visit about_path
      #page.should have_h1('About Us')
      expect(page).to have_selector('h1', text: 'About Us')
    end
    it "should have the base title" do
      visit about_path
      expect(page).to have_title("This is who I am.")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact Me.'" do
      visit contact_path
      #page.should have_h1('About Us')
      expect(page).to have_selector('h1', text: 'Contact Me.')
    end
    it "should have the base title" do
      visit contact_path
      expect(page).to have_title("How to get a hold of me.")
    end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "TwEAter"
    expect(page).to have_selector('h1', text: 'Welcome to TwEAter :)')
  end
  


end