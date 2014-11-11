class InterestsController < ApplicationController

    before_action :authenticate_user!

  def index
    @interests = Interest.all.order(:photo).page params[:page]
    @interest = Interest.new
    @interests = @interests.search(params[:search]) if params[:search].present?
  end

  def create
    @interest = Interest.new(params.require(:interest).permit(:url, :photo, :notes))
    @interest.save
    @interests = Interest.all
    @interest = Interest.new

  end
end
