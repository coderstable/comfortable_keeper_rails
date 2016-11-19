class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, limit: 100
      t.string :hashed_password, limit: 100
      t.timestamps null: false
    end
  end
end
