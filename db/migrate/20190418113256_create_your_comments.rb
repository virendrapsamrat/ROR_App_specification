class CreateYourComments < ActiveRecord::Migration[5.2]
  def change
    create_table :your_comments do |t|
      t.string :commenter
      t.text :body
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
