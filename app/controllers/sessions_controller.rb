class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:student_number] + "@rikkyo.ac.jp")
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "学籍番号もしくはパスワードが違います"
      render 'sessions/new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_url
  end
end