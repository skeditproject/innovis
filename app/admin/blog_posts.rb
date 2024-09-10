ActiveAdmin.register BlogPost do
  permit_params :title, :content, :image

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'Blog Post Details' do
      f.input :title
      f.input :content, as: :quill_editor
      f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image.variant(resize_to_limit: [100, 100])) : content_tag(:span, 'No image uploaded')
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :image do |post|
        if post.image.attached?
          image_tag(post.image.variant(resize_to_limit: [200, 200]), class: 'img-thumbnail')
        else
          content_tag(:span, 'No image uploaded')
        end
      end      
      row :created_at
      row :updated_at
    end
  end

  filter :title
  filter :created_at
end
