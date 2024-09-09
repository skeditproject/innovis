ActiveAdmin.register TeamMember do
  permit_params :name, :designation, :image, :position

  form do |f|
    f.inputs 'Team Member Details' do
      f.input :name
      f.input :designation
      f.input :position
      f.input :image, as: :file
    end
    f.actions
  end
end
