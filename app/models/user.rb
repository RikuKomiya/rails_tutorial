class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_courses
  has_many :courses, through: :user_courses

  def take_courses(course)
    courses << course
  end

  def course_mon(period,sem)
    course = courses.find_by(wday:1, period:period,sem:sem)
    if course.present?
      course
    end
  end
  def course_tue(period,sem)
    course = courses.find_by(wday:2, period:period,sem:sem)
    if course.present?
      course
    end
  end
  def course_wed(period,sem)
    course = courses.find_by(wday:3, period:period,sem:sem)
    if course.present?
      course
    end
  end
  def course_thu(period,sem)
    course = courses.find_by(wday:4, period:period,sem:sem)
    if course.present?
      course
    end
  end
  def course_fri(period,sem)
    course = courses.find_by(wday:5, period:period,sem:sem)
    if course.present?
      course
    end
  end
  def course_sat(period,sem)
    course = courses.find_by(wday:6, period:period,sem:sem)
    if course.present?
      course
    end
  end




end
