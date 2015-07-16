class CategoriesController < ApplicationController

  def show
    @category  = Category.find params[:id]
    @beers = @category.beers
  end
end
