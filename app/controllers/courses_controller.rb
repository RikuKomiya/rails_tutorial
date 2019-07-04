class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "登録完了"
      redirect_to  @course
    else
      render 'courses/new'
    end
  end

  def show
    @course = Course.find_by(id: params[:id])
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update

  end

  def destroy

  end
  private

  def course_params
    params.require(:course).permit(:course_name,:period,:wday,:professor,:sem)
  end

end
