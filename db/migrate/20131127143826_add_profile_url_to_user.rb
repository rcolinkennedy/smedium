class AddProfileUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_url, :string
    add_index :users, :profile_url
  end
end
