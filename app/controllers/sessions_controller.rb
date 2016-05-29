class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:username])
    if user
      if user.authenticate(params[:password])
        session["user_id"] = user.id
        redirect_to leagues_url
        return
      else
        # Email is ok, but password was wrong
      end
    else
      # Email is unknown
    end
    redirect_to login_url, notice: "Invalid username or password"
  end

  def destroy
    reset_session
    redirect_to leagues_url
  end

end
