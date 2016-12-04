class RemovePassworDigestFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :passowrd_digest, :string
  end
end
