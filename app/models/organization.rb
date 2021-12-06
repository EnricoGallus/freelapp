class Organization < ApplicationRecord
  validates_presence_of :name, :user

  belongs_to :user
end
