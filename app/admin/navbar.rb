ActiveAdmin.register Navbar do
  permit_params :title, :link, :position, :logo

  form do |f|
    f.inputs 'Navbar Content' do
      f.input :title
      f.input :link
      f.input :position
      f.input :logo, as: :file, hint: f.object.logo.present? ? image_tag(f.object.logo) : content_tag(:span, "No logo yet")
    end
    f.actions
  end
end
