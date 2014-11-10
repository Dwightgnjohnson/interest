class InterestsController < ApplicationController

    before_action :authenticate_user!

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
