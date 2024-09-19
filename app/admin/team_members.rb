ActiveAdmin.register TeamMember do
  permit_params :name, :designation, :image, :position

  filter :name

  form do |f|
    f.inputs 'Team Member Details' do
      f.input :name
      f.input :designation
      f.input :position
      if f.object.new_record?
        f.input :image, as: :file
      else
        f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image, style: 'max-width: 100px; max-height: 100px;') : content_tag(:span, 'No image uploaded')
      end
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :designation
    column :position
    column :image do |team_member|
      if team_member.image.attached?
        image_tag(team_member.image, style: 'width: 100px; height: 100px; object-fit: cover;')
      else
        content_tag(:span, 'No image')
      end
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :designation
      row :position
      row :image do |team_member|
        if team_member.image.attached?
          image_tag(team_member.image, style: "height: 300px; object-fit: cover;")
        else
          content_tag(:span, 'No image uploaded')
        end
      end
    end
  end
end
