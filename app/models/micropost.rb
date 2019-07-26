class Micropost < ApplicationRecord
  belongs_to :course
  default_scope -> {order(created_at: :desc)}
  validates :course_id, presence: true
  validates :content, presence: true, length: {maximum: 150}
end
