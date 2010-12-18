require 'spec_helper.rb'
#Feature: Manage news
#In order to display a news website
#Editor wants to create stories that will be displayed on the homepage

describe "manage news" do
  describe "Homepage" do
    
    before do
      visit root_path
    end
    
    it "has a 'New Story' link" do
      find_link('New Story').visible?
    end
    
    it "has a link to create a story" do
      click_link('New Story')
      current_path.should == new_story_path
      fill_in('Title', :with => 'Headline News')
      fill_in('Content', :with => 'Great story')
      click_button('Create')
      current_path.should == root_path
      page.should have_content('Headline News')
      page.should have_no_content('Great story')
    end
    
    it "displays a list of stories"
  end
end