class TopController < ApplicationController
  def index
  end

  def check
    user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
       log_in user
       redirect_to root
     else
       flash.now[:danger] = 'E-mailかパスワードが間違っています'
       render 'check'
     end
  end

  def device
  end


end
