class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authenticate_user!
    if session[:user_id].nil?
      redirect_to root_path
    end
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end
