require 'spec_helper'

describe "StaticPages" do
  describe "Start page" do
    
    it "should have the content 'myCarousel'" do
      visit '/'
      expect(page).to have_content('Главная')
    
    end
  end

end