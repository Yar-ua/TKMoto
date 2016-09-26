require 'test_helper'

class HomePagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  describe "Home pages" do

  	describe "Start page" do
  		it "should have content 'Home#start' " do
  			visit '/home/start'
  			expect(page).to have_content('Home#startttt')
  		end
  	end

  end

end
