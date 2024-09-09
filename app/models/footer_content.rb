# app/models/footer_content.rb
class FooterContent < ApplicationRecord
  validates :contact_phone, presence: true
  validates :contact_email, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["contact_email", "contact_phone", "created_at", "id", "id_value", "legal", "services", "updated_at", "verticals"]
  end
end
