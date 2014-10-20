require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up!') }
    it { should have_title('Sign up!') }
  end 

  describe "profile page" do
    before { visit user_path(user) }

    it { should have_selector('h1', text: user.name) }
    it { should have_title(user.name) }
  end

end
