class CreateUserRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_regions do |t|
      t.integer :user_id
      t.integer :region_id

      t.timestamps
    end
  end
end
