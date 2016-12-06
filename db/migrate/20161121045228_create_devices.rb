class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :mac_address
      t.string :preset_temperatuire
      t.string :device_name
      t.integer :device_communication

      t.timestamps null: false
    end
  end
end
