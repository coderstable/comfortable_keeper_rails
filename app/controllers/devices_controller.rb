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
  end

  def update
  end

  def destroy
  end

  private
    def device_params
      params.require(:device).permit(:id, :device_name, :preset_temperatuire, :device_communication) #after add mac_address
    end
end
