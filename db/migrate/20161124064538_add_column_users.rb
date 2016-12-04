class AddColumnUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    remove_column :users, :piyo, :string
  end
end
