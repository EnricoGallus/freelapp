class Project < ApplicationRecord
  validates_presence_of :name, :organization, :user

  belongs_to :organization
  belongs_to :user
end
