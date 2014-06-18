class AddCategoriesIdToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :categories_id, :integer
  end
end
