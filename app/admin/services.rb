ActiveAdmin.register Service do
  permit_params :title, :description, :image, :slug
  filter :title
  form do |f|
    f.inputs 'Service Details' do
      f.input :title
      f.input :description
      if f.object.new_record?
        f.input :image, as: :file
      else
        f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image, style: 'max-width: 100px; max-height: 100px;') : content_tag(:span, 'No image uploaded')
      end
      f.input :slug
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :slug
    column :image do |service_header|
      if service_header.image.attached?
        image_tag(service_header.image, style: 'width: 100px; height: 100px; object-fit: cover;')
      else
        content_tag(:span, 'No image')
      end
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :slug
      row :image do |service_header|
        if service_header.image.attached?
          image_tag(service_header.image, style: "height: 300px; object-fit: cover;")
        else
          content_tag(:span, 'No image uploaded')
        end
      end
    end
  end
end
