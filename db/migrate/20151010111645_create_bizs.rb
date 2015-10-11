class CreateBizs < ActiveRecord::Migration
  def change
    create_table :bizs do |t|
      t.string :name
      t.integer :needed_visits

      t.timestamps null: false
    end
  end
end
