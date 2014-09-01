require 'rails_helper'
require 'spec_helper'

RSpec.describe "Static pages", :type => :request do

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      #page.should have_h1('Sample App')
      expect(page).to have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title('Welcome Home, guy')
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      #page.should have_h1('Help')
      expect(page).to have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit 'static_pages/help'
      expect(page).to have_title("Help me help you.")
    end
  end

  describe "About page" do
    it "should have the h1 'About us'" do
      visit '/static_pages/about'
      #page.should have_h1('About Us')
      expect(page).to have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit 'static_pages/about'
      expect(page).to have_title("This is who I am.")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact Me.'" do
      visit '/static_pages/contact'
      #page.should have_h1('About Us')
      expect(page).to have_selector('h1', :text => 'Contact Me.')
    end
    it "should have the right title" do
      visit 'static_pages/contact'
      expect(page).to have_title("How to get a hold of me.")
    end
  end
end