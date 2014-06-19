ActiveAdmin.register Article do
  permit_params :title, :body, :category, :category_id

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :category
    end
    f.inputs "Content" do
      f.cktext_area :body, :ckeditor => { :uiColor => '#FFF07B', toolbar: 'mini' }
    end
    f.actions
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
