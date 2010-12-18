require 'spec_helper'

describe Story do
  before do
    @valid_attributes = {:title => "Breaking News", :content => "Big Fire"}
  end
  
  it "can be created with valid attributes" do
    Story.create!(@valid_attributes)
  end

end
