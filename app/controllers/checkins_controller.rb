class CheckinsController < ApplicationController
  before_action :authenticate_user!

  def create
    #alert: "Please confirm checking into this beer"
    @beer = Beer.find params[:beer_id]
    @checkin = Checkin.new
    @checkin.user = current_user
    @checkin.beer_id = params[:beer_id]
    respond_to do |format|
      if @checkin.save
        format.html { redirect_to @beer, notice: "Checked In!" }
        format.js { render }
      else
        format.html { render "/beers/show" }
        format.js { render :create_failure }
      end
    end
  end

  def index
    @checkins = Checkin.all
  end

  def destroy
    @beer = Beer.find params[:beer_id]
    respond_to do |format|
      @rating.destroy
      format.html { redirect_to @beer, notice: "Check In Deleted!" }
      format.js { render :destroy}
    end
  end

end
