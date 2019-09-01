class User < ApplicationRecord
  before_save :downcase_stu_num, :set_email
  validates :student_number, presence: true, length: {maximum: 10}
  validates :name,  length: {maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},uniqueness: {case_sensitive: false}


  has_secure_password

  private
  def downcase_stu_num
    self.student_number = student_number.downcase
  end
  def set_email
    self.email = "#{self.student_number}@rikkyo.ac.jp"
  end
end

