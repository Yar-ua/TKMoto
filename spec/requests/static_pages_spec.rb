require 'spec_helper'

describe "StaticPages" do
  
  describe "Start page" do
    it "should have the content 'myCarousel'" do
      visit '/'
      expect(page).to have_content('Главная')
    end
  end

  describe "Start page" do
    it "should have the content 'myCarousel'" do
      visit '/home/start'
      expect(page).to have_content('Главная')
    end
  end

  describe "About page" do
    it "should have the content 'О проекте'" do
      visit '/home/about'
      expect(page).to have_content('О проекте')
    end
  end

  
end