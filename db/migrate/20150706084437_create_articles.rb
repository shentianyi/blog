class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :body_html
      t.references :category, index: true
      t.references :user, index: true
      t.timestamps null: false
    end
    add_foreign_key :articles, :categories
    add_foreign_key :articles, :users
  end
end
