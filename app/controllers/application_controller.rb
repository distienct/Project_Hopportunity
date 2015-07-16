class ApplicationController < ActionController::Base
  before_action :random_establishment

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

  private

  def random_establishment
    @estblishment_random = Establishment.all.sample
  end
end
