class AddCitylikeCitycomment < ActiveRecord::Migration[5.2]
  def change
  	add_column :citylikes, :citycomment_id, :integer
  end
end
