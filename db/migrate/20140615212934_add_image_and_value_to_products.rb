class AddImageAndValueToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :image_name, :string
  	add_column :products, :image_text, :string
  	add_column :products, :image_year, :integer
  end
end
