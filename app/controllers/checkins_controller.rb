class CheckInsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_rating, only: [:destroy]

  def create
    @beer             = Beer.find params[:beer_id]
    checkin_params     = params.require(:check_in).permit(:body, :rating)
    @checkin           = CheckIn.new checkin_params
    @checkin.beer      = @beer
    @checkin.user      = current_user
    respond_to do |format|
      if @checkin.save
        format.html { redirect_to beer_path(@beer), notice: "Checked In!" }
        format.js { render }
      else
        format.html { render "/beers/show" }
        format.js { render :create_failure }
      end
    end
  end

  def destroy
    @beer = Beer.find params[:beer_id]
    respond_to do |format|
      @rating.destroy
      format.html { redirect_to beer_path(@beer), notice: "Check In Deleted!" }
      format.js { render :destroy}
    end
  end

  private

  def find_checkin
    @checkin = CheckIn.find params[:id]
  end

end
