class StaticPagesController < ApplicationController
before_action :set_result_course_search
  def home
    @current_courses =  Course.where(sem: current_sem, wday: current_wday)
    @current_courses_common = @current_courses.get_by_faculty(0)
    @current_courses_management = @current_courses.get_by_faculty(1)
    @current_courses_literature = @current_courses.get_by_faculty(2)
    @current_courses_economics = @current_courses.get_by_faculty(3)
    @current_courses_sociology = @current_courses.get_by_faculty(4)
    @current_courses_low = @current_courses.get_by_faculty(5)

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
                                    wday: params[:wday],period: params[:period],faculty: params[:faculty])
    if result_courses.present?
    @result_courses =result_courses.paginate(page: params[:page], per_page: 12)
    else
      @result_courses = nil
    end

  end


end
