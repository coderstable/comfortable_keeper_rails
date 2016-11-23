class TopController < ApplicationController
  def index
  end

  def check
    user = User.find_by(email: params[:session][:email])
    if
      user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to device_path
    else
      flash.now[:danger] = '誤りがあります。'
    end
  end

  def device
  end


end
