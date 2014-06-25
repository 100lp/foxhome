class Product < ActiveRecord::Base
	validates :category, :image, :presence => { :message => "необходимо выбрать изображение и категорию" }
	mount_uploader :image, ImageUploader
	belongs_to :category
end
