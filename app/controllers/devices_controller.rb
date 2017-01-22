class DevicesController < ApplicationController
  def index
    @device = Device.all
  end

  def show
    @device = DeviceDecorator.find(params[:id])
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    if @device.save
      redirect_to devices_path
      flash[:success] = "新しいデバイスが登録されました"
    else
      # flash.now[:error] = "新しいデバイスを登録できません"
      render 'new'
    end
  end

  def edit
    @device =  DeviceDecorator.find(params[:id])
  end

  def update
    @device =  DeviceDecorator.find(params[:id])
      if @device.update_attributes(device_params)
        flash[:success] = "デバイス情報を更新しました"
        redirect_to device_path
      else
        flash.now[:error] = 'デバイス情報を更新できませんでした'
        render 'edit'
      end
  end

  def destroy
    DeviceDecorator.find(params[:id]).destroy
    flash[:success] = "デバイスリストから１件削除しました"
    redirect_to devices_path
  end

  private
    def device_params
      params.require(:device).permit(:id, :device_name, :preset_temperature, :device_communication, :mac_address)
    end
end
