ActiveAdmin.register ServiceHeader do
  permit_params :title, :image

  form do |f|
    f.inputs "Service Header Details" do
      f.input :title
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, size: "100x100") : ''
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :image do |service_header|
        image_tag(service_header.image) if service_header.image.present?
      end
    end
  end
end
