require 'rails_helper'
require 'spec_helper'

RSpec.describe "Static pages", :type => :request do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'TwEAter') }
    it { should have_title('TwEAter') }
    it { should_not have_title('|') }
    # it "should have the h1 'TwEAter'" do
    #   #page.should have_h1('Sample App')
    #   expect(page).to have_selector('h1', text: 'TwEAter')
    # end

    # it "should have the base title" do
    #   expect(page).to have_title('TwEAter')
    # end

    # it "should not have a custom page title" do
    #   expect(page).to_not have_title('|')
    # end
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_title("Help me help you.") }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About Us') }
    it { should have_title("This is who I am.") }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact Me.') }
    it { should have_title("How to get a hold of me.") }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "TwEAter"
    expect(page).to have_selector('h1', text: 'Welcome to TwEAter :)')
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title('About Us')
    click_link "Help"
    expect(page).to have_title('Help')
    click_link "Contact"
    expect(page).to have_title('Contact')
    click_link "Home"
    click_link "Git yerself an account!"
    expect(page).to have_title('Sign up!')
  end



end