ActiveAdmin.register Product do

  menu priority: 1
  permit_params :price, :description, :mark

  index do
    column :id
    column :price
    column :description
    column :mark
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :price
      f.input :description
      f.input :mark
    end
    f.actions
  end
end
