class AddBodyToCitycomment < ActiveRecord::Migration[5.2]
  def change
    add_column :citycomments, :body, :text
  end
end
