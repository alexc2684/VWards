class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :name, :username
  	rename_column :bizs, :name, :username
  end
end
