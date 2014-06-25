ActiveAdmin.register Product do
  # belongs_to :category
  # navigation_menu :category
  permit_params :image, :year, :name, :text, :category, :category_id

  menu :label => "Галереи"
  show do
    attributes_table do
      row "Название", :title do |image|
        raw image.name
      end
      row "Текст", :description do |image|
        raw image.text
      end
      row "Год", :description do |image|
        raw image.year
      end
      row "Категория", :category do |image|
        raw image.category.title
      end
      row "Изображение", :description do |image|
        link_to(image_tag(image.image), admin_product_path(image))
      end

    end
  end
  form html: { multipart: true } do |f|
    f.inputs "Не забудьте выбрать категорию : )", multipart: true do
      f.input :image, as: :file, :label => "Изображение"
      f.input :name, :label => "Название"
      f.input :text, :label => "Текст"
      f.input :year, :label => "Год"
      f.input :category, :as => :select, :collection => Category.all.map {|c| [c.title, c.id]}, :label => "Категория"
    end

    f.actions
  end

  index do
    column "Изображение", :image do |product|
      link_to(image_tag(product.image), admin_product_path(product))
    end
    column "Название", :name
    column "Текст", :text
    column "Год", :year
    column "Категория", :category do |i|
      i.category.title
    end

    actions
  end

end
