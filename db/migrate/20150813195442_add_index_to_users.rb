class AddIndexToUsers < ActiveRecord::Migration
  def change
    #add_column :users, :username, :string
    add_column :users, :username, :string unless column_exists? :users, :username
    add_index :users, :username, unique: true
  end
end
