class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  	  #sign yje user and redirect to yje user's show page
    else
      flash.now[:danger] = 'invalid email/password combination' # not quite right!
      render 'new'
    end
  end

  def destroy
  end

end
