class BeersController < ApplicationController
  before_action :authenticate_user!

  def index
    @beers = Beer.all.order('name ASC')
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new beer_params
    if @beer.save
      redirect_to @beer, notice: "Beer has been added"
    else
      render :new
    end
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
  end

  def update
    @beer = Beer.find(params[:id])
    if @beer.update(beer_params)
      redirect_to @beer, notice: "Updated"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def beer_params
    params.require(:beer).permit([:name, :description, :abv, :category_id, :brewery_id])
  end
end
