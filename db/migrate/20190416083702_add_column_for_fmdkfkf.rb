class AddColumnForFmdkfkf < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :monthly_charge, :integer
  	add_column :users, :image_id, :file
  end
end
