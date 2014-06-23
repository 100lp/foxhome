ActiveAdmin.register Category do
  permit_params :title, :name

  menu :label => "Категории"

  index do
    column :id
    column :title
    column :name

    actions
  end
  
end
