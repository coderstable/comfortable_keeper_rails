class ChangeColumnTypeDeviceCommunicationToDevices < ActiveRecord::Migration[5.0]
  def change
    change_column :devices, :device_communication, :boolean, null: false
  end
end
