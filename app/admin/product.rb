ActiveAdmin.register Product do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :image_year, :image_name, :image_text
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    # ...
    f.inputs :gallery do
      f.has_many_images :album_images
    end
    # ...
  end

  form do |f|
    # ...
    f.inputs :image do
      f.has_image :featured_image
    end
    # ...
  end



end
