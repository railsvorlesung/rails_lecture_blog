class SessionsController < AuthenticatedController
  
  before_filter :authentication, :only => [:destroy]
  
  # Show login page
  def new
  end
  
  # Perform login
  def create
    if params[:username] == "peter" && params[:password] == "test"
      session[:user] = true        
      redirect_to posts_path
    else
      flash[:notice] = "Das war nix!"
      redirect_to new_session_path
    end
  end
  
  # Logout
  def destroy
  end
end
