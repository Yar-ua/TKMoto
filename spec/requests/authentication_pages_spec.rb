require 'spec_helper'
require './spec/support/utilities'

describe "Authentication" do
  
  subject { page }
  
  describe "sign-in page" do
  	before { visit signin_path }
    
    describe "vith invalid information" do
      before { click_button "Sign in" }

      it { should have_content('Sign in') }
      it { should have_selector('div.alert.alert-danger') }

      describe "after visiting another page" do
        before { click_link "О проекте" }
        it { should_not have_selector('div.alert.alert-danger') }
      end

    end


    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before { sign_in user }

      it { should have_content(user.name) }
      it { should have_link('Profile',     href: user_path(user)) }
      it { should have_link('Settings',    href: edit_user_path(user)) }
      it { should have_link('Sign out',    href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }



      
     end
  end

end