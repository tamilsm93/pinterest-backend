class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.text :article_name
      t.text :article_description
      t.text :tags
      t.string :image
      t.integer :category

      t.timestamps
    end
  end
end
