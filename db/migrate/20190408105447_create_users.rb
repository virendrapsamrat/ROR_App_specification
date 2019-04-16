class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :company_id
      t.integer :role_id
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :monthly_charge
      t.integer :image_id
      t.boolean :active
      
      t.timestamps
    end
  end
end
