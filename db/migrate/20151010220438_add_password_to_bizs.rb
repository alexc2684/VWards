class AddPasswordToBizs < ActiveRecord::Migration
  def change
    add_column :bizs, :password, :string
  end
end
