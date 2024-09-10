ActiveAdmin.register BlogHeader do
  permit_params :title, :subtitle, :description, :video

  form do |f|
    f.inputs 'Blog Header Details' do
      f.input :title
      f.input :subtitle
      f.input :description
      f.input :video, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :description
    column :video do |header|
      if header.video.attached?
        video_tag url_for(header.video), controls: true, size: "100x100"
      else
        status_tag('No Video', :warning)
      end
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :subtitle
      row :description
      row :video do |header|
        if header.video.attached?
          video_tag url_for(header.video), controls: true, size: "300x200"
        else
          status_tag('No Video', :warning)
        end
      end
    end
  end

  controller do
    def update
      if params[:blog_header][:video].present?
        resource.video.attach(params[:blog_header][:video])
      end
      super
    end
  end
end
