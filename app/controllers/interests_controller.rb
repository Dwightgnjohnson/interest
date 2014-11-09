class InterestsController < ApplicationController
  def index
    @interests = Interest.all
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(params.require(:interest).permit(:url, :photo, :notes))
    @interest.save
    @interests = Interest.all
    @interest = Interest.new
  end
end
