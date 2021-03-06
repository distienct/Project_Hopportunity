class ApplicationController < ActionController::Base
  before_action :random_establishment
  before_action :find_beers

  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to new_session_path, notice: "Please sign in" unless user_signed_in?
  end

  def user_signed_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find_by_id session[:user_id]
  end

  helper_method :current_user
  helper_method :average_rating

  private

  def random_establishment
    @estblishment_random = Establishment.all.sample
  end

  def find_beers
    @beers = Beer.all
  end
end
