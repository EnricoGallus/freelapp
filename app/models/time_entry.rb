class TimeEntry < ApplicationRecord
  validates_presence_of :name, :project, :user, :from, :to, :date

  belongs_to :project
  belongs_to :user
end
