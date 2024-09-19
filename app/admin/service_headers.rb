ActiveAdmin.register ServiceHeader do
  permit_params :title, :image

  filter :title

  index do
    selectable_column
    id_column
    column :title
    column :image do |service_header|
      if service_header.image.attached?
        image_tag(service_header.image, style: 'width: 100px; height: 100px; object-fit: cover;')
      else
        content_tag(:span, 'No image')
      end
    end
    actions
  end

  form do |f|
    f.inputs "Service Header Details" do
      f.input :title
      if f.object.new_record?
        f.input :image, as: :file
      else
        f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image, style: 'max-width: 100px; max-height: 100px;') : content_tag(:span, 'No image uploaded')
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
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
