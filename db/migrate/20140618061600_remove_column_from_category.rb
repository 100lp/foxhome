class RemoveColumnFromCategory < ActiveRecord::Migration
  def self.up
  	remove_column :categories, :category_name
  end
end
