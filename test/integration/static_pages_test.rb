require "test_helper"

class StaticPagesTest < ActionDispatch::IntegrationTest
describe "Static pages" do

  describe "Home page" do

    it "should have the content 'KFreezePop'" do
      visit '/static_pages/home'
      expect(page).to have_content('KFreezePop')
    end
  end
end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
