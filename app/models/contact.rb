class Contact < ApplicationRecord
  has_many_attached :attachments

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true
end
