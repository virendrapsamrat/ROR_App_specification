class CreateCitylikes < ActiveRecord::Migration[5.2]
  def change
    create_table :citylikes do |t|
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
