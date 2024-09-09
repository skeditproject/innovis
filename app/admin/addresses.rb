ActiveAdmin.register Address do
  permit_params :city, :street, :details

  index do
    selectable_column
    id_column
    column :city
    column :street
    column :details
    actions
  end

  form do |f|
    f.inputs do
      f.input :city
      f.input :street
      f.input :details
    end
    f.actions
  end

  show do
    attributes_table do
      row :city
      row :street
      row :details
    end
  end
end
