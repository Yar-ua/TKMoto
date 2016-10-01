require 'spec_helper'

describe "StaticPages" do
  
  describe "Start page" do
    
    it "should have been content 'Home#Start'" do
      visit '/home/start'
      expect(page).to have_content('Home#start')
    
    end
  end
end
