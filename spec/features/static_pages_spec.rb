require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the title 'Home'" do
      visit '/'
      # visit '/static_pages/home' # deprecated when moved to root
      expect(page).to have_title("Home | smedium")
    end

    it "should have the content 'Home'" do
      visit '/'
      # visit '/static_pages/home' # deprecated when moved to root
      expect(page).to have_content('Home')
    end
  end

  describe "About page" do

    it "should have the title 'About'" do
      visit '/about'
      expect(page).to have_title('About | smedium')
    end

    it "should have the content 'About'" do
      visit '/about'
      expect(page).to have_content('About')
    end
  end
end

