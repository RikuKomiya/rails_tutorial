class StaticPagesController < ApplicationController
before_action :set_result_course_search
  def home
    @current_courses =  Course.where(sem: current_sem, wday: current_wday)

  end

  def help
  end

  def about
  end

  def contact

  end

  def set_today

  end
  private

  def current_sem
    @today = Time.current
    spring_sem = [4,5,6,7,8]
    fall_sem = [1,9,10,11,12]
    if spring_sem.include?(@today.month)
       0
    elsif fall_sem.include?(@today.month)
       1
    end
  end

  def current_period

  end

  def current_wday
    @today = Time.current
    @today.wday
  end

  def set_result_course_search

    @result_courses = Course.search(course_name: params[:course_name],
                                    professor: params[:professor],sem:params[:sem],
                                    wday: params[:wday],period: params[:period])

  end


end
