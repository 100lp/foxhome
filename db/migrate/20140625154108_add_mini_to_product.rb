class AddMiniToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :mini_image, :string
  end
end
