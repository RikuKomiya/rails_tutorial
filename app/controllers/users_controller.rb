class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @courses = @user.courses.all
  end
end
