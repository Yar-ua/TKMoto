require 'rails_helper'

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
  end

end