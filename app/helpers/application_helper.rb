module ApplicationHelper
  def user_logged_in?
    session[:user_id].present?
  end
end
