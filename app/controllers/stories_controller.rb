class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end
  
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(params[:story])
    if @story.save
      redirect_to root_path
    end
  end
  
end
