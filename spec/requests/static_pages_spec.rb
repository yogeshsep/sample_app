require 'spec_helper'

describe "Static pages" do

  subject { page }

  it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    page.should have_selector 'title', text: full_title('Home')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign Up')
  end
end