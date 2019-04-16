class AddNewimageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :newimage, :string
  end
end
