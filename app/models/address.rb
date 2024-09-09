class Address < ApplicationRecord


  def self.ransackable_attributes(auth_object = nil)
    ["city", "created_at", "details", "id", "id_value", "street", "updated_at"]
  end
end
