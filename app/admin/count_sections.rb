ActiveAdmin.register CountSection do
  permit_params :number, :text, :image

  filter :number
  filter :text

  index do
    selectable_column
    id_column
    column :number
    column :text
    column :image do |section|
      if section.image.attached?
        image_tag(section.image.variant(resize_to_limit: [100, 100]), style: "height: 100px; object-fit: cover;")
      else
        content_tag(:span, 'No image uploaded')
      end
    end
    actions
  end

  form do |f|
    f.inputs 'Count Section' do
      f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image.variant(resize_to_limit: [100, 100])) : content_tag(:span, 'No image uploaded')
      f.input :number, as: :string, label: 'Count Number'
      f.input :text, as: :string, label: 'Count Text'
    end
    f.actions
  end

  show do
    attributes_table do
      row :number
      row :text
      row :image do |section|
        if section.image.attached?
          image_tag(section.image.variant(resize_to_limit: [300, 300]), style: "height: 300px; object-fit: cover;")
        else
          content_tag(:span, 'No image uploaded')
        end
      end
    end
  end
end
