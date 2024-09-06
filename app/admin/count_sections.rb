ActiveAdmin.register CountSection do
  permit_params :image, :number, :text

  form do |f|
    f.inputs 'Count Section' do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : content_tag(:span, 'No image uploaded')
      f.input :number, as: :string, label: 'Count Number'
      f.input :text, as: :string, label: 'Count Text'
    end
    f.actions
  end
end
