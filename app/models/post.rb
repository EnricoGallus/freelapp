class Post < ApplicationRecord
  include FriendlyId
  friendly_id :title, use: %i[slugged]

  validates_presence_of :title, :slug, :overview, :thumbnail, :content

  belongs_to :user
  has_rich_text :content
  has_one_attached :thumbnail
  has_and_belongs_to_many :post_categories
  has_and_belongs_to_many :post_tags
end
