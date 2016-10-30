require 'spec_helper'

describe "StaticPages" do
  
  describe "Start page" do
    it "should have the content 'Главная'" do
      visit '/'
      expect(page).to have_content('Главная')
    end
    it "should have the content 'Главная'" do
      visit root_path
      expect(page).to have_content('Главная')
    end
    it "should have the content 'Главная'" do
      visit '/home/start'
      expect(page).to have_content('Главная')
    end
  end

  describe "About page" do
    it "should have the content 'О проекте'" do
      visit '/home/about'
      expect(page).to have_content('О проекте')
    end
    it "should have the content 'О проекте'" do
      visit home_about_path
      expect(page).to have_content('О проекте')
    end
  end

end