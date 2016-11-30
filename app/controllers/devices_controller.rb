class DevicesController < ApplicationController
  def index
    @device = Device.all
  end

  def show
    @device = Device.find(params[:id])
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    if @device.save then
      flash[:success] = "新しいデバイスが登録されました"

      redirect_to devices_path
    else
      render 'new'
    end
  end

  def edit
    @device =  Device.find(params[:id])
  end

  def update
    @device =  Device.find(params[:id])
    if @device.update_attributes(device_params)
      flash[:success] = "デバイス名を更新しました"
      redirect_to device_path
    end
  end

  def destroy
    Device.find(params[:id]).destroy
    flash[:success] = "recipe is destroyed."
    redirect_to devices_path
  end

  private
    def device_params
      params.require(:device).permit(:id, :device_name, :preset_temperature, :device_communication, :mac_address)
    end
end
