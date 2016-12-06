class ChangeColumntypeIntDeviceCommunicationToString < ActiveRecord::Migration
  def change
    change_column :devices, :device_communication, :string

  end
end
