require 'spec_helper'

describe "Pages" do

  describe "Home page" do

    it "should have the content 'Carneval.es'" do
      visit '/pages/home'
      page.should have_selector('h1', text: 'Carneval.es')
    end

    it "should have the title 'Carneval.es [home]'" do
      visit '/pages/home'
      page.should have_selector('title', text: "Carneval.es [home]")
	  end
  end

  describe "Profile page" do

    it "should have the content 'My Profile'" do
      visit '/pages/profile'
      page.should have_selector('h1', text: 'My Profile')
    end

    it "should have the title 'Carneval.es [profile]'" do
      visit '/pages/profile'
      page.should have_selector('title', text: "Carneval.es [profile]")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/pages/about'
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'Carneval.es [about]'" do
      visit '/pages/about'
      page.should have_selector('title', text: "Carneval.es [about]")
    end
  end
end