class Task < ActiveRecord::Base

  belongs_to :task_list
  validates_presence_of :description
  belongs_to :user, foreign_key: "assigned_to"
  scope :incomplete, -> { where(completed: false) }

end