class RenameColumnAtProduct < ActiveRecord::Migration
  def change
  	rename_column :products, :categories_id, :category_id
  end
end
