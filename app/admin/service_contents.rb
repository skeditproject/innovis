ActiveAdmin.register ServiceContent do
  permit_params :service_id, :content

  filter :service
  filter :content

  form do |f|
    f.inputs "Service Content" do
      f.input :service
      f.input :content, as: :quill_editor
    end
    f.actions
  end
end
