ActiveAdmin.register Testimonial do
  permit_params :profile_image, :reviewer_name, :review_text, :initial

  form do |f|
    f.inputs do
      f.input :initial, label: "Initial (Profile Letter)"
      f.input :reviewer_name, label: "Reviewer Name"
      f.input :review_text, label: "Review Text"
      f.input :profile_image, label: "Profile Image (Optional)"
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :initial
    column :reviewer_name
    column :review_text
    actions
  end
end
