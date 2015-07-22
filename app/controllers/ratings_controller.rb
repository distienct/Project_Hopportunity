class RatingsController < ApplicationController
  
  before_action :authenticate_user!

  def create
    @beer          = Beer.find params[:beer_id]
    rating_params  = params.require(:rating).permit(:body, :rating)
    @rating        = Rating.new(rating_params)
    @rating.beer   = @beer
    @rating.user   = current_user
    respond_to do |format|
      if @rating.save
        format.html { redirect_to @beer, notice: "Thanks for the review!" }
        format.js
      else
        format.html { render "/beers/show" }
        format.js { render :create_failure }
      end
    end
  end

  def destroy
    @beer = Beer.find params[:beer_id]
    @rating = Rating.find params[:id]
    @rating.destroy
    respond_to do |format|
      format.html { redirect_to @beer, notice: "Review removed" }
      format.js { render :destroy }
    end
  end

end
