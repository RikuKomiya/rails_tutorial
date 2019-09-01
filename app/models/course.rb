class Course < ApplicationRecord
  has_many :microposts, dependent: :destroy
  validates :course_name, presence: true
  validates :period, presence: true
  validates :sem, presence: true
  validates :wday, presence: true
  validates :professor, presence: true


end
