ActiveAdmin.register Client do
  permit_params :name, :cpf, :location, :salarys
end
