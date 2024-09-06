class Header < ApplicationRecord
    has_one_attached :video

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "subtitle", "title", "updated_at", "video_url"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["video_attachment", "video_blob"]
  end
end
