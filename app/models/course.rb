class Course < ApplicationRecord
  has_many :microposts, dependent: :destroy
  has_many :user_courses
  has_many :users, through: :user_courses
  validates :course_name, presence: true
  validates :period, presence: true
  validates :sem, presence: true
  validates :wday, presence: true
  validates :professor, presence: true
  validates :faculty, presence: true
  scope  :get_by_course_name, ->(course_name){where(['course_name LIKE ?',"%#{course_name}%"])}
  scope :get_by_professor, ->(professor){where(['professor LIKE ?',"%#{professor}%"])}
  scope :get_by_sem, ->(sem) {where(sem:sem)}
  scope :get_by_wday, ->(wday) {where(wday:wday)}
  scope :get_by_period, ->(period) {where(period:period)}
  scope :get_by_faculty, ->(faculty){where(faculty:faculty)}


  def self.search(course_name:"",professor:"",sem:"",wday:"",period:"",faculty:"")
    results = nil
    if course_name.present?
      course_name = course_name.gsub(" ","")
      if results.nil?
      results = get_by_course_name(course_name)
      else
        results = results.get_by_course_name(course_name)
      end
    end
    if professor.present?
      professor = professor.gsub(" ","")
      if results.nil?
      results = get_by_professor(professor)
      else
       results = results.get_by_professor(professor)
      end
    end
    if sem.present?
      if results.nil?
        sem = sem.to_i
        results = get_by_sem(sem)
      else
        results = results.get_by_sem(sem)
      end
    end
    if wday.present?
      if results.nil?
        wday  = wday.to_i
        results = get_by_wday(wday)
      else
        results = results.get_by_wday(wday)
      end
    end
    if period.present?
      if results.nil?
        period  = period.to_i
        results = get_by_period(period)
      else
        results = results.get_by_period(period)
      end
    end
    if faculty.present?
      if results.nil?
      faculty = faculty.to_i
      results = get_by_faculty(faculty)
    else
      results = results.get_by_faculty(faculty)
      end
      end
     return results

  end


end

