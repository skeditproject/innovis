class ServiceContent < ApplicationRecord
  belongs_to :service

  has_rich_text :content
  has_rich_text :list


  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "id_value", "service_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["service"]
  end
end
