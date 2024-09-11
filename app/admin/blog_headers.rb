ActiveAdmin.register BlogHeader do
  permit_params :title, :subtitle, :description, :video

  filter :title
  filter :subtitle
  filter :description

  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :description do |header|
      truncate(header.description, length: 100)
    end

    column :video do |header|
      if header.video.attached?
        video_tag(header.video, controls: true, width: '100')
      else
        content_tag(:span, 'No video')
      end
    end
    actions
  end

  form do |f|
    f.inputs 'Header Content' do
      f.input :title, as: :string, label: 'Title'
      f.input :subtitle, as: :string, label: 'Subtitle'
      f.input :description, as: :string, label: 'Description'
      if f.object.video.attached? && f.object.video.content_type.start_with?('video/')
        f.input :video, as: :file, hint: video_tag(f.object.video, controls: true, width: '300')
      else
        f.input :video, as: :file, hint: content_tag(:span, 'No video uploaded')
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :subtitle
      row :description

      row :video do |header|
        if header.video.attached? && header.video.content_type.start_with?('video/')
          video_tag(header.video, controls: true, width: '300')
        else
          content_tag(:span, 'No video uploaded')
        end
      end
    end
    active_admin_comments
  end
end
