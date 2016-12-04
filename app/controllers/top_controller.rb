class TopController < ApplicationController
  def index
  end

  def signup
    @user = User.new
    
  end

  def check
    user = User.find_by(email: params[:session][:email].downcase)

     if user && User.authenticate(params[:session][:email], params[:session][:password])
       log_in user
       redirect_to root_path
     else
       flash.now[:danger] = 'E-mailかパスワードが間違っています'
       render 'check'
     end
  end

  def device
  end


end
