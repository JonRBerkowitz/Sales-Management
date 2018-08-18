module SessionsHelper

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def login_redirect
    unless logged_in?
      redirect_to login_url
    end
  end

end
