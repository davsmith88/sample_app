require 'spec_helper'

describe "StaticPages" do
  describe "home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title('Ruby on Rails Tuturial Sample App | Home')
    end
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it 'should have the right title' do
  		visit '/static_pages/help'
  		expect(page).to have_title('Ruby on Rails Tuturial Sample App | Help')
  	end
  end

  describe "About page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it 'should have the right title' do
  		visit '/static_pages/about'
  		expect(page).to have_title('Ruby on Rails Tuturial Sample App | About')
  	end
  end

  describe "Contact Page" do
  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content("Contact Page")
  	end
  	it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title('Ruby on Rails Tuturial Sample App | Contact')
  	end
  end

end
