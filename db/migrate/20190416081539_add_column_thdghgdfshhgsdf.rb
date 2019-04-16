class AddColumnThdghgdfshhgsdf < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :state_id, :integer
  	add_column :users, :city_id, :integer
  	add_column :users, :country_id, :integer
  end
end
