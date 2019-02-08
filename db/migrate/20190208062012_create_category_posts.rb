class CreateCategoryPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :category_posts do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :post, foreign_key: true

      t.timestamps
    end
  end
end
