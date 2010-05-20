# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def authentication
    unless session[:user]
      flash[:notice] = "Sie müssen angemeldet sein."
      redirect_to new_session_path
    end
  end
end
