ActiveAdmin.register Category do
  permit_params :name
  
  index do
    column :id
    column :name

    actions
  end
  
end
