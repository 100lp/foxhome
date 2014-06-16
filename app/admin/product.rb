ActiveAdmin.register Product do
  permit_params :image, :image_year, :image_name, :image_text

  form html: { multipart: true } do |f|
    f.inputs "Details", multipart: true do
      f.input :image, as: :file
      f.input :image_name
      f.input :image_text
      f.input :image_year
    end

    f.actions
  end

  index do
    column :image
    column :image_name
    column :image_text
    column :image_year

    actions
  end
end
