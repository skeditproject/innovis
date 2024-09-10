ActiveAdmin.register BlogHeader do
  permit_params :title, :subtitle, :description, :video

  form do |f|
    f.inputs 'Blog Header Details' do
      f.input :title
      f.input :subtitle
      f.input :description
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :description
    actions
  end

  show do
    attributes_table do
      row :title
      row :subtitle
      row :description
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
