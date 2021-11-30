class Post < ApplicationRecord
  validates :title, presence: true
  validates :overview, presence: true
  validates :thumbnail, presence: true
  validates :content, presence: true

  belongs_to :user
  has_rich_text :content
  has_one_attached :thumbnail
end
