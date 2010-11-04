class ApplicationController < ActionController::Base

  helper :all # include all helpers, all the time   
  protect_from_forgery # See ActionController::RequestForgeryProtection for details   

  # Scrub sensitive parameters from your log   
  # filter_parameter_logging :password   

  helper_method :current_user_session, :current_user  

  private   

  def current_user_session   
    @current_user_session ||= UserSession.find   
  end  

  def current_user   
    @current_user ||= current_user_session && current_user_session.record   
  end  


  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section" 
      redirect_to sigin_path # Prevents the current action from running
    end
  end

  # The logged_in? method simply returns true if the user is logged in and
  # false otherwise. It does this by "booleanizing" the current_user method
  # we created previously using a double ! operator. Note that this is not
  # common in Ruby and is discouraged unless you really mean to convert something
  # into true or false.
  def logged_in?
     current_user
  end



end
