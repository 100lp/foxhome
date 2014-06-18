class RenameColumnToProduct < ActiveRecord::Migration
  def change
  	rename_column :products, :image_name, :name
  	rename_column :products, :image_text, :text
  	rename_column :products, :image_year, :year
  end
end
