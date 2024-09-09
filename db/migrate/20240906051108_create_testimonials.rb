class CreateTestimonials < ActiveRecord::Migration[7.1]
  def change
    create_table :testimonials do |t|
      t.string :profile_image
      t.string :reviewer_name
      t.text :review_text
      t.string :initial

      t.timestamps
    end
  end
end
