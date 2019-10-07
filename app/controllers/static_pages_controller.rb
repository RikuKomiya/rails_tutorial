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



  def set_result_course_search

    result_courses = Course.search(course_name: params[:course_name],
                                    professor: params[:professor],sem:params[:sem],
                                    wday: params[:wday],period: params[:period])
    if result_courses.present?
    @result_courses =result_courses.paginate(page: params[:page], per_page: 12)
    else
      @result_courses = nil
    end

  end


end
