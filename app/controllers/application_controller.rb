class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  before_action :current_user
  # before_action :if_not_admin

  private

  def current_user
    return unless session[:user_id]
    @current_user = User.find_by(id: session[:user_id])
  end

  # def if_not_admin
  #   redirect_to admin_restaurants_path if current_user.admin?
  # end
end
