class Testimonial < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "initial", "profile_image", "review_text", "reviewer_name", "updated_at"]
  end
end
