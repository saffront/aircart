class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :item
      t.string :description
      t.string :country
      t.string :category
      t.string :url

      t.timestamps null: false
    end
  end
end
