require 'spec_helper'

RSpec.describe "UserPages", type: :request do

	subject {page}

  	describe "sign-up page" do
  	  before { visit signup_path }

      it { should have_content('Sign up') }
      it { should have_content('Users#new') }
      
  end
end