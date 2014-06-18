ActiveAdmin.register Product do
  # belongs_to :category
  # navigation_menu :category
  permit_params :image, :year, :name, :text, :category, :category_id

  form html: { multipart: true } do |f|
    f.inputs "Details", multipart: true do
      f.input :image, as: :file
      f.input :name
      f.input :text
      f.input :year
      f.input :category
    end

    f.actions
  end

  index do
    column :image do |product|
      link_to(image_tag(product.image), admin_product_path(product))
    end
    column :name
    column :text
    column :year
    column :category

    actions
  end

  # index :as => :grid do |product|
  #   link_to(image_tag(product.image), admin_product_path(product))
  # end
end
