ActiveAdmin.register ServiceContent do
  permit_params :service_id, :content, :heading, :paragraph, :list

  filter :service
  filter :heading
  filter :paragraph
  filter :list
  filter :content

  form do |f|
    f.inputs "Service Content" do
      f.input :service
      f.input :content
      f.input :heading
      f.input :paragraph, as: :text
      f.input :list, as: :text
    end
    f.actions
  end
end
