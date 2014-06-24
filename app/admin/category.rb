ActiveAdmin.register Category do
  permit_params :title, :name

  menu :label => "Категории"
  form do |f|
    f.inputs "details" do
      f.input :title, :label => "Заголовок"
      f.input :name
    end
    f.actions
  end
  index do
    column :id
    column :title
    column :name

    actions
  end
  
end
