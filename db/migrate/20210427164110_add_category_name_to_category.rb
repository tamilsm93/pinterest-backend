class AddCategoryNameToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :category_name, :text
  end
end
