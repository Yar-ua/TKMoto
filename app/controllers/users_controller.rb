class UsersController < ApplicationController
  before_action :signed_in_user,  only: [:index, :edit, :update]
  before_action :correct_user,    only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
  	@user = User.new
  end


  def create
  	@user = User.new(user_params)
  	if @user.save
  	  flash[:success] = "Welcome"
      sign_in(@user)
  	  redirect_to @user
  	else
  	  render 'new'
  	end
  end
  

  def show
  	@user = User.find_by(params[:id])
  end


  def edit
  end


  def update
    if @user.update_attributes(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # before filter

  def signed_in_user
    unless signed_in?
    store_location  # смотри sessions_helper
    redirect_to signin_url, notice: "Please sign in"
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

end
end