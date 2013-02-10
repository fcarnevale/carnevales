require 'spec_helper'

describe "Pages" do

  describe "Home page" do

    it "should have the content 'Carneval.es'" do
      visit root_path
      page.should have_selector('h1', text: 'Calling all Carnevales.')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title', text: "Carneval.es")
	  end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: " [home]")
    end

  end

  describe "Profile page" do

    it "should have the content 'My Profile'" do
      visit profile_path
      page.should have_selector('h1', text: 'My Profile')
    end

    it "should have the title 'Carneval.es [profile]'" do
      visit profile_path
      page.should have_selector('title', text: full_title("profile"))
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'Carneval.es [about]'" do
      visit about_path
      page.should have_selector('title', text: full_title("about"))
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Carneval.es [contact]'" do
      visit contact_path
      page.should have_selector('title', text: full_title("contact"))
    end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: "Carneval.es [about]"
    click_link "Profile"
    page.should have_selector 'title', text: "Carneval.es [profile]"
    click_link "Contact"
    page.should have_selector 'title', text: "Carneval.es [contact]"
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: "Carneval.es [sign up]"
    click_link "Carnevales"
    page.should have_selector 'title', text: "Carneval.es" 
  end



end