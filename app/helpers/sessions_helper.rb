module SessionsHelper

  def sign_in(user)
  	remember_token = User.new_remember_token
  	cookies.permanent[:remember_token] = remember_token #установка истечения remember_token 
														# через 20 лет
# аналогично cookies[:remember_token] = { value: remember_token, expires: 20.years.from_now.utc }
  	user.update_attribute(:remember_token, User.encrypt(remember_token))
  	self.current_user = user
  end

  def current_user=(user)   # аналогично self.current_user = ...
  	@current_user = user
  end

end