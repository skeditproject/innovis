ActiveAdmin.register BlogHeader do
  permit_params :title, :subtitle, :description, :video

  form do |f|
    f.inputs 'Header Content' do
      f.input :title, as: :string, label: 'Title'
      f.input :subtitle, as: :string, label: 'Subtitle'
      f.input :description, as: :string, label: 'Description'
      f.input :video, as: :file, hint: f.object.video.attached? ? video_tag(f.object.video, controls: true, width: '300') : content_tag(:span, 'No video uploaded')
    end
    f.actions
  end

  filter :title
  filter :subtitle
  filter :description
end
