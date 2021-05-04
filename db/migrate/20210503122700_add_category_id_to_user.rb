class AddCategoryIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :category_id, :text, array: true , default: []
  end
end
