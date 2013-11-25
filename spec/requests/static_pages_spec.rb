require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("smedium Home")
    end

    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end
  end

  describe "About page" do

    it "should have the title 'About'" do
      visit '/about'
      expect(page).to have_title('About')
    end
  end
end