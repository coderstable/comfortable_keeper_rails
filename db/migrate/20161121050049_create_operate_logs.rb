class CreateOperateLogs < ActiveRecord::Migration
  def change
    create_table :operate_logs do |t|
      t.string :temperature_up
      t.string :temperature_down

      t.timestamps null: false
    end
  end
end
