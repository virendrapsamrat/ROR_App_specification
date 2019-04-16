class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :real_name
      t.string :image_name

      t.timestamps
    end
  end
end
