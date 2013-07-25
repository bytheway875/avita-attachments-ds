module SessionsHelper
  def signed_in?
    user = User.THISISWRONGCHANGETHISLATER
    if session[:remember_token] && User.find(session[:remember_token] = user.id)
      true
    end
  end

  def current_user
    if self.signed_in?
      @user = User.find(session[:remember_token])
    end
  end
end
