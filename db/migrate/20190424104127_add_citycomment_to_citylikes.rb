class AddCitycommentToCitylikes < ActiveRecord::Migration[5.2]
  def change
    add_column :citylikes, :citycomment, :integer
    remove_column :citylikes, :city_id
    remove_column :likes, :citycomment_id
  end
end
