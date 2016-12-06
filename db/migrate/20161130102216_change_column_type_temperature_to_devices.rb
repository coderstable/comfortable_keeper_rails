class ChangeColumnTypeTemperatureToDevices < ActiveRecord::Migration
  def change
    change_column :devices, :preset_temperatuire, :integer
    rename_column :devices, :preset_temperatuire, :preset_temperature
  end
end
