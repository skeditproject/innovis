class BlogHeader < ApplicationRecord

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true


  def self.ransackable_associations(auth_object = nil)
    ["video_attachment", "video_blob"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "subtitle", "title", "updated_at"]
  end
end
