ActiveAdmin.register Article do
  permit_params :title, :description, :body, :category, :category_id

  menu :label => "Материалы", :priority => 1

  show do
    attributes_table do
      # row "ID", :id do |article|
      #   raw article.id
      # end
      row "Название", :title do |article|
        raw article.title
      end
      row "Категория", :category do |article|
        if !article.category.nil?
          raw article.category.title
        end
      end
      row "Описание", :description do |article|
        raw article.description
      end
      row "Содержание", :body do |article|
        raw article.body
      end
    end
  end
  form do |f|
    f.inputs "Не забудьте выбрать категорию : )" do
      f.input :title, :label => "Заголовок"
      f.input :category, :as => :select, :collection => Category.all.map {|c| [c.title, c.id]}, :label => "Категория"
    end
    f.inputs "Описание" do
      f.cktext_area :description, :ckeditor => { :uiColor => '#FFF07B', toolbar: 'mini' }
    end
    f.inputs "Весь материал" do
      f.cktext_area :body, :ckeditor => { :uiColor => '#FFF07B', toolbar: 'mini' }
    end
    f.actions
  end

  index do
    column "Название",:title
    column "Описание", :description do |article|
      raw article.description
    end
    column "Содержание", :body do |article|
      raw article.body
    end
    column "Категория", :category do |i|
      if !i.category.nil?
        i.category.title
      end
    end
    actions
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
