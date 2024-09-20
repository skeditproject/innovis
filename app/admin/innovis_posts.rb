ActiveAdmin.register InnovisPost do
  permit_params :title, :content, :section_key, :image

  filter :title

  form do |f|
    f.inputs 'Innovis Post' do
      f.input :title
      f.input :section_key
      f.input :content, as: :quill_editor
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
      row :section_key
      row :content do |post|
        post.content.html_safe
      end
      row :image do |post|
        if post.image.attached?
          image_tag(post.image, class: 'img-thumbnail',style: 'max-width: 100px; max-height: 100px;')
        else
          content_tag(:span, 'No image uploaded')
        end
      end
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :section_key
    column :image do |post|
      if post.image.attached?
        image_tag url_for(post.image), class: 'admin-thumb-img', style: 'max-width: 100px; max-height: 100px;'
      else
        "No Image"
      end
    end
    actions
  end
end
