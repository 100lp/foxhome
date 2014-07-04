class AddEnglishToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :etitle, :text
  	add_column :articles, :edescription, :text
  	add_column :articles, :ebody, :text
  end
end
