ActiveAdmin.register Client do
  menu priority: 1
  permit_params :name, :cpf, :location, :salary

  index do
    column :id
    column :name
    column :cpf
    column :location
    column :salary
  end

  form do |f|
    f.inputs "Detalhes" do
      f.input :name
      f.input :cpf
      f.input :location
      f.input :salary
    end
    f.actions
  end

end
