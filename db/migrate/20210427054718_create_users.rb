class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :email
      t.string :password
      t.string :confirm_password
      t.string :article_preference
      t.string :array

      t.timestamps
    end
  end
end
