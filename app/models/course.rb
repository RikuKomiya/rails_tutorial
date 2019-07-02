class Course < ApplicationRecord
  validates :course_name, presence: true
  validates :period, presence: true
end
