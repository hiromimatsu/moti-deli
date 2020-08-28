class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :restaurant, null: false
      t.index :restaurant
      t.string :image, null: false
      t.text :menu, null: false
      t.text :rule, null: false
      t.integer :area_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end