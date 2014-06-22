class AddColumnsToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :title, :text
  	add_column :articles, :body, :text
  end
end
