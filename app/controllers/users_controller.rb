class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.errors.any?
      render :new
    else
      flash[:success] = "Added User"
      redirect_to :index
  end
end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name)
  end

end
