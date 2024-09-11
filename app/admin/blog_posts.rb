ActiveAdmin.register BlogPost do
  permit_params :title, :content, :image, :slug

  index do
    selectable_column
    id_column
    column :title
    column :slug
    column :content do |post|
      truncate(strip_tags(post.content), length: 100)
    end

    column :image do |post|
      if post.image.attached?
        image_tag(post.image, style: 'width: 100px; height: 100px; object-fit: cover;')
      else
        content_tag(:span, 'No image')
      end
    end
    actions
  end

  form do |f|
    f.inputs 'Blog Post Details' do
      f.input :title
      f.input :slug
      f.input :content, as: :quill_editor
      if f.object.new_record?
        f.input :image, as: :file
      else
        f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image.variant(resize_to_limit: [100, 100]), style: 'max-width: 100px; max-height: 100px;') : content_tag(:span, 'No image uploaded')
      end
      # f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(f.object.image.variant(resize_to_limit: [100, 100])) : content_tag(:span, 'No image uploaded')
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :slug
      row :image do |post|
        if post.image.attached?
          image_tag(post.image.variant(resize_to_limit: [200, 200]), class: 'img-thumbnail')
        else
          content_tag(:span, 'No image uploaded')
        end
      end      
    end
  end
  filter :title
end
