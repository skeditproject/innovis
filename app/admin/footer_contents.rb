ActiveAdmin.register FooterContent do
  permit_params :contact_phone, :contact_email, :services, :verticals, :legal

  form do |f|
    f.inputs 'Footer Content' do
      f.input :contact_phone, as: :string, label: 'Contact Phone'
      f.input :contact_email, as: :string, label: 'Contact Email'
      f.input :services, as: :text, label: 'Services'
      f.input :verticals, as: :text, label: 'Verticals'
      f.input :legal, as: :text, label: 'Legal'
    end
    f.actions
  end
end
