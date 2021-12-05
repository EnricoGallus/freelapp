class Post < ApplicationRecord
  validates :title, presence: true
  validates :overview, presence: true
  validates :thumbnail, presence: true
  validates :content, presence: true

  belongs_to :user
  has_rich_text :content
  has_one_attached :thumbnail
  has_and_belongs_to_many :post_categories
  has_and_belongs_to_many :post_tags
end
