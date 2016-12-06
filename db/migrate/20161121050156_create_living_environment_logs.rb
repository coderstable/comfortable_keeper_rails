class CreateLivingEnvironmentLogs < ActiveRecord::Migration
  def change
    create_table :living_environment_logs do |t|
      t.string :temperrature
      t.string :humidity
      t.string :time

      t.timestamps null: false
    end
  end
end
