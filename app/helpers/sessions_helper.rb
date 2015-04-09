module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def user_can_vote?(concern)
    attributes = {:voter_id => current_user.id, :concern_id => concern.id}
    # absence of record means user hasn't voted yet
    vote = Vote.where(attributes).first
    (current_user != concern.creator) && !vote
  end

  def login_logout_links
    if logged_in?
      link_to 'Logout', logout_path
    else
      link_to 'Log in with Facebook!', login_path
    end
  end

  def current_user_name
    "Hello, #{current_user.name}" if current_user
  end
end
