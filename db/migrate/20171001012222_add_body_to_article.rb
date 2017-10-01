class AddBodyToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :body, :text
  end
end
