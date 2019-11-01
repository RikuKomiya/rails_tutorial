class UserCoursesController < ApplicationController


  def create

    course = Course.find_by(id: params[:course_id])
    delete_duplication_courses_at_same_time(course)
    if current_user.take_courses(course)
      redirect_to course_path(course)
    end

  end
  def destroy
    course = Course.find_by(id: params[:course_id])
    current_user.user_courses.find_by(course_id: params[:course_id]).destroy
      redirect_to course_path(course)

  end

  private


  def delete_duplication_courses_at_same_time(course)
    origin_course = current_user.courses.find_by(wday:course.wday,period:course.period,sem:course.sem)
    if origin_course.present?
      current_user.user_courses.find_by(course_id: origin_course.id).destroy
    end
  end

end
