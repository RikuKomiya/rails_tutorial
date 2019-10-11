class CoursesController < ApplicationController

  def index
    @courses = Course.paginate(page:params[:page])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    begin
      if @course.save
      flash[:success] = "登録完了"
      redirect_to  @course
      else
      render 'courses/new'
      end
    rescue
      flash.now[:danger] = "ダブってるでー"
      render'courses/new'
      end
  end

  def show
    @course = Course.find_by(id: params[:id])
    @feed = @course.microposts.paginate(page:params[:page])
    @micropost = @course.microposts.new

  end

  def edit
    @course = Course.find_by(id: params[:id])
    day_of_week?(@course)
  end

  def update
    @course = Course.find_by(id: params[:id])
    if @course.update(course_params)
      flash[:success] = "編集しました"
      redirect_to courses_path
    else
      render "courses/edit"
    end

  end

  def destroy
    @course = Course.find_by(id: params[:id])
    @course.delete
    redirect_to courses_path
  end




  private

  def course_params
    params.require(:course).permit(:course_name,:period,:wday,:professor,:sem,:faculty)
  end

  def day_of_week?(course)
    case course.wday
    when 1
      @mon = true
    when 2
      @tue = true
    when 3
      @wen = true
    when 4
      @thu = true
    when 5
      @fri = true
    when 6
      @sat = true
    end
  end

end
