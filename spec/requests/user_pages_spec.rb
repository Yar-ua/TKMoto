require 'spec_helper'

describe "User pages" do

	subject {page}

  	describe "sign-up page" do
  	  before { visit user_path(@user) }

      it { should have_content(user.name) }
      it { should have_content('Users#new') }
      
  end
end