class Course < ApplicationRecord
  validates :title, :short_description, :price, :level, presence: true
  validates :description, presence: true
  has_rich_text :description

  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged
end
