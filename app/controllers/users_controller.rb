class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @courses = @user.courses.all
    @current_sem = current_sem
  end
end
