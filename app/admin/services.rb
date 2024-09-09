ActiveAdmin.register Service do
  permit_params :title, :description, :image, :slug
  filter :title
  form do |f|
    f.inputs 'Service Details' do
      f.input :title
      f.input :description
      f.input :image, as: :file
      f.input :slug
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :image
    column :slug
    actions
  end
end
