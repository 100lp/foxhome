class Product < ActiveRecord::Base
	has_many_images :album_images
	has_image :featured_image
end
