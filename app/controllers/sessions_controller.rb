class SessionsController < ApplicationController

  def new
  end

    def create
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      flash[:success] = "You have successfully logged in"
      redirect_to "/index"
    else
      flash[:danger] = "Credentials invalid - please try again"
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to "/index"
  end

end
