class CreateArticleCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :article_categories do |t|
      t.references :article, null: false
      t.references :category, null: false
      t.timestamps
    end
  end
end
