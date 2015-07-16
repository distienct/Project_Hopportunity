class EstablishmentsController < ApplicationController

  def index
    @establishments = Establishment.order('name ASC')
  end

  def new
  end

  def create
  end

  def show
    @establishment = Establishment.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
