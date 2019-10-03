class MicropostsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @micropost = @course.microposts.new(micropost_params)

    if @micropost.save
      redirect_to @course

    else
      render "courses/show"
    end
      end


  private
  def micropost_params
    params.require(:micropost).permit(:content,:course_id)
  end
end
