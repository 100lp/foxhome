class Product < ActiveRecord::Base
	validates :category, :image, :mini_image, :presence => { :message => "необходимо выбрать изображение и категорию" }
	mount_uploader :image, ImageUploader
	mount_uploader :mini_image, ImageUploader
	belongs_to :category
end
